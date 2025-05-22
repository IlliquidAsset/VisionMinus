.class public Lcom/univocity/parsers/common/ArgumentUtils;
.super Ljava/lang/Object;
.source "ArgumentUtils.java"


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMissingElements([Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->findMissingElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findMissingElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 199
    invoke-static {p0, v3}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    .line 151
    :goto_0
    array-length p1, p0

    if-ge p2, p1, :cond_5

    .line 152
    aget-object p1, p0, p2

    if-nez p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 158
    :goto_1
    array-length v0, p0

    if-ge p2, v0, :cond_5

    .line 159
    aget-object v0, p0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 165
    :cond_3
    :goto_2
    array-length v0, p0

    if-ge p2, v0, :cond_5

    .line 166
    aget-object v0, p0, p2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    return p0

    .line 148
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null array"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static indexOf([Ljava/lang/String;Ljava/lang/String;Lcom/univocity/parsers/common/fields/FieldSelector;)I
    .locals 2

    .line 83
    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {p2, p0}, Lcom/univocity/parsers/common/fields/FieldSelector;->getFieldIndexes([Ljava/lang/String;)[I

    move-result-object p0

    const/4 p2, 0x0

    .line 89
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 90
    aget v1, p0, p2

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return p1
.end method

.method public static indexesOf([Ljava/lang/Object;Ljava/lang/Object;)[I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    move-object v2, v1

    const/4 v1, 0x0

    .line 111
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 112
    invoke-static {p0, p1, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 118
    aput v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static newReader(Ljava/io/File;)Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    .line 409
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 421
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .locals 1

    .line 435
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 437
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    .line 358
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 370
    check-cast p1, Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static newReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .locals 2

    if-nez p1, :cond_1

    .line 383
    new-instance v0, Lcom/univocity/parsers/common/input/BomInput;

    invoke-direct {v0, p0}, Lcom/univocity/parsers/common/input/BomInput;-><init>(Ljava/io/InputStream;)V

    .line 384
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/BomInput;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/BomInput;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/BomInput;->hasBytesStored()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 395
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 397
    :cond_2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method public static newWriter(Ljava/io/File;)Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    .line 304
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static newWriter(Ljava/io/File;Ljava/lang/String;)Ljava/io/Writer;
    .locals 0

    .line 316
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Writer;
    .locals 3

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', please ensure your application has permission to create files in that path"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 342
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    invoke-static {v0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 344
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    .line 265
    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 0

    .line 277
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static newWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/Writer;
    .locals 1

    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 292
    :cond_0
    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public static varargs noNulls(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .line 61
    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->notEmpty(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 64
    array-length p1, p1

    if-lez p1, :cond_0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not contain nulls"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 245
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 254
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static normalize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 215
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 217
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 218
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs notEmpty(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 48
    array-length p1, p1

    if-eqz p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be empty"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "<omitted>"

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 510
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p0

    if-lez p0, :cond_3

    if-lez v0, :cond_3

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 514
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restrictContent(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 522
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 524
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/univocity/parsers/common/ArgumentUtils;->restrictContent(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static throwUnchecked(Ljava/lang/Throwable;)V
    .locals 0

    .line 535
    invoke-static {p0}, Lcom/univocity/parsers/common/ArgumentUtils;->throwsUnchecked(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static throwsUnchecked(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method public static toArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Enum;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 452
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 455
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static varargs toByteArray([I)[B
    .locals 3

    .line 550
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 551
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 552
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toCharArray(Ljava/util/Collection;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 489
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 492
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    add-int/lit8 v3, v1, 0x1

    .line 493
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toIntArray(Ljava/util/Collection;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 470
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 473
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    .line 474
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
