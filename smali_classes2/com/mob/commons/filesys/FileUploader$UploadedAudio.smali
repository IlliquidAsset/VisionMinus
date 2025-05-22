.class public Lcom/mob/commons/filesys/FileUploader$UploadedAudio;
.super Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedAudio"
.end annotation


# instance fields
.field public final durationUSec:I


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

    .line 262
    invoke-direct {p0, p1}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    :try_start_0
    const-string v0, "time"

    .line 265
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, -0x1

    .line 267
    :goto_0
    iput p1, p0, Lcom/mob/commons/filesys/FileUploader$UploadedAudio;->durationUSec:I

    return-void
.end method
