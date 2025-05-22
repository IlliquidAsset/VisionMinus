.class public Lcom/powervision/gcs/utils/io/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lcom/powervision/gcs/utils/io/ClosedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/powervision/gcs/utils/io/ClosedInputStream;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/ClosedInputStream;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/io/ClosedInputStream;->CLOSED_INPUT_STREAM:Lcom/powervision/gcs/utils/io/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
