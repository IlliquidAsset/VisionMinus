.class public Lcom/mob/commons/filesys/FileUploader$UploadedImage;
.super Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedImage"
.end annotation


# instance fields
.field public final zoomList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    :try_start_0
    const-string v0, "list"

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    .line 233
    :goto_0
    iput-object p1, p0, Lcom/mob/commons/filesys/FileUploader$UploadedImage;->zoomList:Ljava/util/HashMap;

    return-void
.end method
