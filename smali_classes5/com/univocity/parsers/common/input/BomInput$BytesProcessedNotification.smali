.class public final Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;
.super Ljava/lang/RuntimeException;
.source "BomInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/input/BomInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BytesProcessedNotification"
.end annotation


# instance fields
.field public final encoding:Ljava/lang/String;

.field public final input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;->input:Ljava/io/InputStream;

    .line 195
    iput-object p2, p0, Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
