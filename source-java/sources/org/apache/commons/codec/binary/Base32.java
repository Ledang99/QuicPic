package org.apache.commons.codec.binary;

import org.apache.commons.codec.binary.BaseNCodec;
import org.apache.commons.logging.impl.SimpleLog;

/* loaded from: classes.dex */
public class Base32 extends BaseNCodec {
    private static final int BITS_PER_ENCODED_BYTE = 5;
    private static final int BYTES_PER_ENCODED_BLOCK = 8;
    private static final int BYTES_PER_UNENCODED_BLOCK = 5;
    private static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};
    private static final byte[] ENCODE_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};
    private static final byte[] HEX_DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32};
    private static final byte[] HEX_ENCODE_TABLE = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86};
    private static final int MASK_5BITS = 31;
    private final int decodeSize;
    private final byte[] decodeTable;
    private final int encodeSize;
    private final byte[] encodeTable;
    private final byte[] lineSeparator;

    public Base32() {
        this(false);
    }

    public Base32(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base32(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base32(int i, byte[] bArr, boolean z) {
        super(5, BYTES_PER_ENCODED_BLOCK, i, bArr == null ? 0 : bArr.length);
        if (z) {
            this.encodeTable = HEX_ENCODE_TABLE;
            this.decodeTable = HEX_DECODE_TABLE;
        } else {
            this.encodeTable = ENCODE_TABLE;
            this.decodeTable = DECODE_TABLE;
        }
        if (i <= 0) {
            this.encodeSize = BYTES_PER_ENCODED_BLOCK;
            this.lineSeparator = null;
        } else {
            if (bArr == null) {
                throw new IllegalArgumentException("lineLength " + i + " > 0, but lineSeparator is null");
            }
            if (containsAlphabetOrPad(bArr)) {
                throw new IllegalArgumentException("lineSeparator must not contain Base32 characters: [" + StringUtils.newStringUtf8(bArr) + "]");
            }
            this.encodeSize = bArr.length + BYTES_PER_ENCODED_BLOCK;
            this.lineSeparator = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.lineSeparator, 0, bArr.length);
        }
        this.decodeSize = this.encodeSize - 1;
    }

    public Base32(boolean z) {
        this(0, null, z);
    }

    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // org.apache.commons.codec.binary.BaseNCodec
    void decode(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        int i3;
        if (context.eof) {
            return;
        }
        ?? r3 = 1;
        if (i2 < 0) {
            context.eof = true;
        }
        int i4 = 0;
        int i5 = i;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            int i6 = i5 + 1;
            byte b2 = bArr[i5];
            if (b2 == 61) {
                context.eof = r3;
                break;
            }
            byte[] ensureBufferSize = ensureBufferSize(this.decodeSize, context);
            if (b2 >= 0) {
                byte[] bArr2 = this.decodeTable;
                if (b2 < bArr2.length) {
                    byte b3 = bArr2[b2];
                    if (b3 >= 0) {
                        context.modulus = (context.modulus + r3) % BYTES_PER_ENCODED_BLOCK;
                        i3 = i4;
                        context.lbitWorkArea = (context.lbitWorkArea << 5) + b3;
                        if (context.modulus == 0) {
                            int i7 = context.pos;
                            context.pos = i7 + 1;
                            ensureBufferSize[i7] = (byte) ((context.lbitWorkArea >> 32) & 255);
                            int i8 = context.pos;
                            context.pos = i8 + 1;
                            ensureBufferSize[i8] = (byte) ((context.lbitWorkArea >> 24) & 255);
                            int i9 = context.pos;
                            context.pos = i9 + 1;
                            ensureBufferSize[i9] = (byte) ((context.lbitWorkArea >> 16) & 255);
                            int i10 = context.pos;
                            context.pos = i10 + 1;
                            ensureBufferSize[i10] = (byte) ((context.lbitWorkArea >> 8) & 255);
                            int i11 = context.pos;
                            context.pos = i11 + 1;
                            ensureBufferSize[i11] = (byte) (context.lbitWorkArea & 255);
                        }
                    } else {
                        i3 = i4;
                    }
                    i4 = i3 + 1;
                    i5 = i6;
                    r3 = 1;
                }
            }
            i3 = i4;
            i4 = i3 + 1;
            i5 = i6;
            r3 = 1;
        }
        if (!context.eof || context.modulus < 2) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.decodeSize, context);
        switch (context.modulus) {
            case 2:
                int i12 = context.pos;
                context.pos = i12 + 1;
                ensureBufferSize2[i12] = (byte) ((context.lbitWorkArea >> 2) & 255);
                return;
            case 3:
                int i13 = context.pos;
                context.pos = i13 + 1;
                ensureBufferSize2[i13] = (byte) ((context.lbitWorkArea >> 7) & 255);
                return;
            case 4:
                context.lbitWorkArea >>= 4;
                int i14 = context.pos;
                context.pos = i14 + 1;
                ensureBufferSize2[i14] = (byte) ((context.lbitWorkArea >> 8) & 255);
                int i15 = context.pos;
                context.pos = i15 + 1;
                ensureBufferSize2[i15] = (byte) (context.lbitWorkArea & 255);
                return;
            case 5:
                context.lbitWorkArea >>= 1;
                int i16 = context.pos;
                context.pos = i16 + 1;
                ensureBufferSize2[i16] = (byte) ((context.lbitWorkArea >> 16) & 255);
                int i17 = context.pos;
                context.pos = i17 + 1;
                ensureBufferSize2[i17] = (byte) ((context.lbitWorkArea >> 8) & 255);
                int i18 = context.pos;
                context.pos = i18 + 1;
                ensureBufferSize2[i18] = (byte) (context.lbitWorkArea & 255);
                return;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                context.lbitWorkArea >>= 6;
                int i19 = context.pos;
                context.pos = i19 + 1;
                ensureBufferSize2[i19] = (byte) ((context.lbitWorkArea >> 16) & 255);
                int i20 = context.pos;
                context.pos = i20 + 1;
                ensureBufferSize2[i20] = (byte) ((context.lbitWorkArea >> 8) & 255);
                int i21 = context.pos;
                context.pos = i21 + 1;
                ensureBufferSize2[i21] = (byte) (context.lbitWorkArea & 255);
                return;
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                context.lbitWorkArea >>= 3;
                int i22 = context.pos;
                context.pos = i22 + 1;
                ensureBufferSize2[i22] = (byte) ((context.lbitWorkArea >> 24) & 255);
                int i23 = context.pos;
                context.pos = i23 + 1;
                ensureBufferSize2[i23] = (byte) ((context.lbitWorkArea >> 16) & 255);
                int i24 = context.pos;
                context.pos = i24 + 1;
                ensureBufferSize2[i24] = (byte) ((context.lbitWorkArea >> 8) & 255);
                int i25 = context.pos;
                context.pos = i25 + 1;
                ensureBufferSize2[i25] = (byte) (context.lbitWorkArea & 255);
                return;
            default:
                throw new IllegalStateException("Impossible modulus " + context.modulus);
        }
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    void encode(byte[] bArr, int i, int i2, BaseNCodec.Context context) {
        if (context.eof) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            int i4 = i;
            while (i3 < i2) {
                byte[] ensureBufferSize = ensureBufferSize(this.encodeSize, context);
                context.modulus = (context.modulus + 1) % 5;
                int i5 = i4 + 1;
                int i6 = bArr[i4];
                if (i6 < 0) {
                    i6 += 256;
                }
                context.lbitWorkArea = (context.lbitWorkArea << 8) + i6;
                if (context.modulus == 0) {
                    int i7 = context.pos;
                    context.pos = i7 + 1;
                    ensureBufferSize[i7] = this.encodeTable[((int) (context.lbitWorkArea >> 35)) & MASK_5BITS];
                    int i8 = context.pos;
                    context.pos = i8 + 1;
                    ensureBufferSize[i8] = this.encodeTable[((int) (context.lbitWorkArea >> 30)) & MASK_5BITS];
                    int i9 = context.pos;
                    context.pos = i9 + 1;
                    ensureBufferSize[i9] = this.encodeTable[((int) (context.lbitWorkArea >> 25)) & MASK_5BITS];
                    int i10 = context.pos;
                    context.pos = i10 + 1;
                    ensureBufferSize[i10] = this.encodeTable[((int) (context.lbitWorkArea >> 20)) & MASK_5BITS];
                    int i11 = context.pos;
                    context.pos = i11 + 1;
                    ensureBufferSize[i11] = this.encodeTable[((int) (context.lbitWorkArea >> 15)) & MASK_5BITS];
                    int i12 = context.pos;
                    context.pos = i12 + 1;
                    ensureBufferSize[i12] = this.encodeTable[((int) (context.lbitWorkArea >> 10)) & MASK_5BITS];
                    int i13 = context.pos;
                    context.pos = i13 + 1;
                    ensureBufferSize[i13] = this.encodeTable[((int) (context.lbitWorkArea >> 5)) & MASK_5BITS];
                    int i14 = context.pos;
                    context.pos = i14 + 1;
                    ensureBufferSize[i14] = this.encodeTable[((int) context.lbitWorkArea) & MASK_5BITS];
                    context.currentLinePos += BYTES_PER_ENCODED_BLOCK;
                    if (this.lineLength > 0 && this.lineLength <= context.currentLinePos) {
                        System.arraycopy(this.lineSeparator, 0, ensureBufferSize, context.pos, this.lineSeparator.length);
                        context.pos += this.lineSeparator.length;
                        context.currentLinePos = 0;
                    }
                }
                i3++;
                i4 = i5;
            }
            return;
        }
        context.eof = true;
        if (context.modulus == 0 && this.lineLength == 0) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.encodeSize, context);
        int i15 = context.pos;
        int i16 = context.modulus;
        if (i16 != 0) {
            if (i16 == 1) {
                int i17 = context.pos;
                context.pos = i17 + 1;
                ensureBufferSize2[i17] = this.encodeTable[((int) (context.lbitWorkArea >> 3)) & MASK_5BITS];
                int i18 = context.pos;
                context.pos = i18 + 1;
                ensureBufferSize2[i18] = this.encodeTable[((int) (context.lbitWorkArea << 2)) & MASK_5BITS];
                int i19 = context.pos;
                context.pos = i19 + 1;
                ensureBufferSize2[i19] = 61;
                int i20 = context.pos;
                context.pos = i20 + 1;
                ensureBufferSize2[i20] = 61;
                int i21 = context.pos;
                context.pos = i21 + 1;
                ensureBufferSize2[i21] = 61;
                int i22 = context.pos;
                context.pos = i22 + 1;
                ensureBufferSize2[i22] = 61;
                int i23 = context.pos;
                context.pos = i23 + 1;
                ensureBufferSize2[i23] = 61;
                int i24 = context.pos;
                context.pos = i24 + 1;
                ensureBufferSize2[i24] = 61;
            } else if (i16 == 2) {
                int i25 = context.pos;
                context.pos = i25 + 1;
                ensureBufferSize2[i25] = this.encodeTable[((int) (context.lbitWorkArea >> 11)) & MASK_5BITS];
                int i26 = context.pos;
                context.pos = i26 + 1;
                ensureBufferSize2[i26] = this.encodeTable[((int) (context.lbitWorkArea >> 6)) & MASK_5BITS];
                int i27 = context.pos;
                context.pos = i27 + 1;
                ensureBufferSize2[i27] = this.encodeTable[((int) (context.lbitWorkArea >> 1)) & MASK_5BITS];
                int i28 = context.pos;
                context.pos = i28 + 1;
                ensureBufferSize2[i28] = this.encodeTable[((int) (context.lbitWorkArea << 4)) & MASK_5BITS];
                int i29 = context.pos;
                context.pos = i29 + 1;
                ensureBufferSize2[i29] = 61;
                int i30 = context.pos;
                context.pos = i30 + 1;
                ensureBufferSize2[i30] = 61;
                int i31 = context.pos;
                context.pos = i31 + 1;
                ensureBufferSize2[i31] = 61;
                int i32 = context.pos;
                context.pos = i32 + 1;
                ensureBufferSize2[i32] = 61;
            } else if (i16 == 3) {
                int i33 = context.pos;
                context.pos = i33 + 1;
                ensureBufferSize2[i33] = this.encodeTable[((int) (context.lbitWorkArea >> 19)) & MASK_5BITS];
                int i34 = context.pos;
                context.pos = i34 + 1;
                ensureBufferSize2[i34] = this.encodeTable[((int) (context.lbitWorkArea >> 14)) & MASK_5BITS];
                int i35 = context.pos;
                context.pos = i35 + 1;
                ensureBufferSize2[i35] = this.encodeTable[((int) (context.lbitWorkArea >> 9)) & MASK_5BITS];
                int i36 = context.pos;
                context.pos = i36 + 1;
                ensureBufferSize2[i36] = this.encodeTable[((int) (context.lbitWorkArea >> 4)) & MASK_5BITS];
                int i37 = context.pos;
                context.pos = i37 + 1;
                ensureBufferSize2[i37] = this.encodeTable[((int) (context.lbitWorkArea << 1)) & MASK_5BITS];
                int i38 = context.pos;
                context.pos = i38 + 1;
                ensureBufferSize2[i38] = 61;
                int i39 = context.pos;
                context.pos = i39 + 1;
                ensureBufferSize2[i39] = 61;
                int i40 = context.pos;
                context.pos = i40 + 1;
                ensureBufferSize2[i40] = 61;
            } else {
                if (i16 != 4) {
                    throw new IllegalStateException("Impossible modulus " + context.modulus);
                }
                int i41 = context.pos;
                context.pos = i41 + 1;
                ensureBufferSize2[i41] = this.encodeTable[((int) (context.lbitWorkArea >> 27)) & MASK_5BITS];
                int i42 = context.pos;
                context.pos = i42 + 1;
                ensureBufferSize2[i42] = this.encodeTable[((int) (context.lbitWorkArea >> 22)) & MASK_5BITS];
                int i43 = context.pos;
                context.pos = i43 + 1;
                ensureBufferSize2[i43] = this.encodeTable[((int) (context.lbitWorkArea >> 17)) & MASK_5BITS];
                int i44 = context.pos;
                context.pos = i44 + 1;
                ensureBufferSize2[i44] = this.encodeTable[((int) (context.lbitWorkArea >> 12)) & MASK_5BITS];
                int i45 = context.pos;
                context.pos = i45 + 1;
                ensureBufferSize2[i45] = this.encodeTable[((int) (context.lbitWorkArea >> 7)) & MASK_5BITS];
                int i46 = context.pos;
                context.pos = i46 + 1;
                ensureBufferSize2[i46] = this.encodeTable[((int) (context.lbitWorkArea >> 2)) & MASK_5BITS];
                int i47 = context.pos;
                context.pos = i47 + 1;
                ensureBufferSize2[i47] = this.encodeTable[((int) (context.lbitWorkArea << 3)) & MASK_5BITS];
                int i48 = context.pos;
                context.pos = i48 + 1;
                ensureBufferSize2[i48] = 61;
            }
        }
        context.currentLinePos += context.pos - i15;
        if (this.lineLength > 0 && context.currentLinePos > 0) {
            System.arraycopy(this.lineSeparator, 0, ensureBufferSize2, context.pos, this.lineSeparator.length);
            context.pos += this.lineSeparator.length;
        }
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    public boolean isInAlphabet(byte b2) {
        if (b2 >= 0) {
            byte[] bArr = this.decodeTable;
            if (b2 < bArr.length && bArr[b2] != -1) {
                return true;
            }
        }
        return false;
    }
}
