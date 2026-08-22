package org.apache.http.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.util.Args;

/* loaded from: classes.dex */
public class BasicFuture<T> implements Future<T>, Cancellable {
    private final FutureCallback<T> callback;
    private volatile boolean cancelled;
    private volatile boolean completed;

    /* renamed from: ex */
    private volatile Exception f5023ex;
    private volatile T result;

    public BasicFuture(FutureCallback<T> futureCallback) {
        this.callback = futureCallback;
    }

    private T getResult() throws ExecutionException {
        if (this.f5023ex == null) {
            return this.result;
        }
        throw new ExecutionException(this.f5023ex);
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        return cancel(true);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.cancelled = true;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.cancelled();
            }
            return true;
        }
    }

    public boolean completed(T t) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.result = t;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.completed(t);
            }
            return true;
        }
    }

    public boolean failed(Exception exc) {
        synchronized (this) {
            if (this.completed) {
                return false;
            }
            this.completed = true;
            this.f5023ex = exc;
            notifyAll();
            FutureCallback<T> futureCallback = this.callback;
            if (futureCallback != null) {
                futureCallback.failed(exc);
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized T get() throws InterruptedException, ExecutionException {
        while (!this.completed) {
            wait();
        }
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public synchronized T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j);
        long currentTimeMillis = millis <= 0 ? 0L : System.currentTimeMillis();
        long j2 = millis;
        if (this.completed) {
            return getResult();
        }
        if (j2 <= 0) {
            throw new TimeoutException();
        }
        do {
            wait(j2);
            if (this.completed) {
                return getResult();
            }
            j2 = millis - (System.currentTimeMillis() - currentTimeMillis);
        } while (j2 > 0);
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.cancelled;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.completed;
    }
}
