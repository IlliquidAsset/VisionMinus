.class public Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->fileType:I

    .line 104
    iput-object p2, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-void
.end method
