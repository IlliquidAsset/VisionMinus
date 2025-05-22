.class public Lcom/leon/channel/common/V1SchemeUtil;
.super Ljava/lang/Object;
.source "V1SchemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leon/channel/common/V1SchemeUtil$ChannelExistException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containV1Magic(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 212
    sget-object p0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length p0, p0

    new-array p0, p0, [B

    .line 213
    sget-object v0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 214
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 216
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 221
    :cond_0
    throw p0
.end method

.method public static containV1Signature(Ljava/io/File;)Z
    .locals 6

    .line 309
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string p0, "META-INF/MANIFEST.MF"

    .line 310
    invoke-virtual {v0, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p0

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 313
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 315
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/\\w+\\.SF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    const/4 v0, 0x0

    .line 287
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 289
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 292
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 295
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 297
    :cond_4
    throw p1
.end method

.method public static getEocd(Ljava/io/File;)Lcom/leon/channel/common/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/leon/channel/common/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    invoke-static {v1}, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/leon/channel/common/Pair;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/leon/channel/common/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    .line 261
    :cond_1
    :try_start_2
    new-instance p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v0, "ZIP64 APK not supported"

    invoke-direct {p0, v0}, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 269
    :cond_2
    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static isV1MagicMatch([B)Z
    .locals 4

    .line 231
    array-length v0, p0

    sget-object v1, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    sget-object v1, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 235
    aget-byte v1, p0, v0

    sget-object v3, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static readChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 157
    sget-object p0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length p0, p0

    new-array p0, p0, [B

    .line 158
    sget-object v0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 162
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    invoke-static {v1}, Lcom/leon/channel/common/V1SchemeUtil;->readShort(Ljava/io/DataInput;)S

    move-result p0

    if-lez p0, :cond_0

    int-to-long v4, p0

    sub-long/2addr v2, v4

    .line 169
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    new-array p0, p0, [B

    .line 172
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 173
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 175
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "zip channel info not found"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "zip v1 magic not found"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 184
    :cond_2
    throw p0
.end method

.method private static readShort(Ljava/io/DataInput;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 195
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 196
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method public static removeChannelByV1(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 122
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->getEocd(Ljava/io/File;)Lcom/leon/channel/common/Pair;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x16

    const-string v4, "file : "

    if-ne v2, v3, :cond_0

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , has no comment"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , has comment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/leon/channel/common/verify/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 129
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x16

    add-long/2addr v0, v5

    const-wide/16 v5, 0x2

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    .line 133
    invoke-static {v0, v3}, Lcom/leon/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v5, v2

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , remove comment success"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 141
    :cond_1
    throw p0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param error , file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeChannel(Ljava/io/File;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const-string v1, "UTF-8"

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 56
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->getEocd(Ljava/io/File;)Lcom/leon/channel/common/Pair;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x16

    const-wide/16 v4, 0x2

    const-string v6, "rw"

    const-string v7, "file : "

    if-ne v2, v3, :cond_1

    .line 58
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , has no comment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    array-length p0, p1

    add-int/lit8 p0, p0, 0x2

    sget-object v0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    add-int/2addr p0, v0

    invoke-static {p0, v1}, Lcom/leon/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    .line 66
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 68
    array-length p0, p1

    invoke-static {p0, v1}, Lcom/leon/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    .line 70
    sget-object p0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 75
    :cond_0
    throw p0

    .line 77
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , has comment"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->containV1Magic(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    :try_start_2
    invoke-static {p0}, Lcom/leon/channel/common/V1SchemeUtil;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 83
    new-instance v3, Lcom/leon/channel/common/V1SchemeUtil$ChannelExistException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has a channel : "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", only ignore"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/leon/channel/common/V1SchemeUtil$ChannelExistException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/leon/channel/common/verify/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 91
    array-length v3, p1

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    sget-object v7, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v7, v7

    add-int/2addr v3, v7

    .line 93
    :try_start_3
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 95
    :try_start_4
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    add-long/2addr v8, v10

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    invoke-static {v3, v7}, Lcom/leon/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    .line 99
    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v10

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    invoke-virtual {v7, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 103
    array-length p0, p1

    invoke-static {p0, v7}, Lcom/leon/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    .line 105
    sget-object p0, Lcom/leon/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v7, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception p0

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 110
    :cond_4
    throw p0

    .line 52
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param error , file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , channel : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeShort(ILjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 188
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p0, p0

    .line 189
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
