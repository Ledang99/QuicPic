.class public Lorg/apache/http/client/entity/DeflateInputStream;
.super Ljava/io/InputStream;
.source "DeflateInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;
    }
.end annotation


# instance fields
.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 74
    .local v0, "peeked":[B
    new-instance v1, Ljava/io/PushbackInputStream;

    array-length v2, v0

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    .local v1, "pushback":Ljava/io/PushbackInputStream;
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 78
    .local v2, "headerLength":I
    const/4 v3, -0x1

    const-string v4, "Unable to read the response"

    if-eq v2, v3, :cond_5

    .line 83
    const/4 v5, 0x1

    new-array v6, v5, [B

    .line 85
    .local v6, "dummy":[B
    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7}, Ljava/util/zip/Inflater;-><init>()V

    .line 89
    .local v7, "inf":Ljava/util/zip/Inflater;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v6}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v9

    move v10, v9

    .local v10, "n":I
    if-nez v9, :cond_3

    .line 90
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-nez v9, :cond_2

    .line 96
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 99
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    invoke-virtual {v7, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "peeked":[B
    .end local v1    # "pushback":Ljava/io/PushbackInputStream;
    .end local v2    # "headerLength":I
    .end local v6    # "dummy":[B
    .end local v7    # "inf":Ljava/util/zip/Inflater;
    .end local p1    # "wrapped":Ljava/io/InputStream;
    throw v3

    .line 107
    .restart local v0    # "peeked":[B
    .restart local v1    # "pushback":Ljava/io/PushbackInputStream;
    .restart local v2    # "headerLength":I
    .restart local v6    # "dummy":[B
    .restart local v7    # "inf":Ljava/util/zip/Inflater;
    .restart local p1    # "wrapped":Ljava/io/InputStream;
    :cond_3
    :goto_1
    if-eq v10, v3, :cond_4

    .line 115
    invoke-virtual {v1, v0, v8, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 116
    new-instance v3, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v3, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .end local v10    # "n":I
    goto :goto_2

    .line 108
    .restart local v10    # "n":I
    :cond_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "peeked":[B
    .end local v1    # "pushback":Ljava/io/PushbackInputStream;
    .end local v2    # "headerLength":I
    .end local v6    # "dummy":[B
    .end local v7    # "inf":Ljava/util/zip/Inflater;
    .end local p1    # "wrapped":Ljava/io/InputStream;
    throw v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v10    # "n":I
    .restart local v0    # "peeked":[B
    .restart local v1    # "pushback":Ljava/io/PushbackInputStream;
    .restart local v2    # "headerLength":I
    .restart local v6    # "dummy":[B
    .restart local v7    # "inf":Ljava/util/zip/Inflater;
    .restart local p1    # "wrapped":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 117
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/util/zip/DataFormatException;
    :try_start_1
    invoke-virtual {v1, v0, v8, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 122
    new-instance v4, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v4, v1, v8}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v4, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v3    # "e":Ljava/util/zip/DataFormatException;
    :goto_2
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    .line 125
    nop

    .line 127
    return-void

    .line 124
    :goto_3
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    throw v3

    .line 79
    .end local v6    # "dummy":[B
    .end local v7    # "inf":Ljava/util/zip/Inflater;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 206
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 179
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 180
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 189
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
