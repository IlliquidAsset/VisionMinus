.class public Lcom/mob/commons/filesys/FileUploader$UploadedFile;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/filesys/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadedFile"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "src"

    .line 208
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->url:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_0
    iput-object v2, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->url:Ljava/lang/String;

    :goto_0
    const-string v0, "id"

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->id:Ljava/lang/String;

    goto :goto_1

    .line 216
    :cond_1
    iput-object v2, p0, Lcom/mob/commons/filesys/FileUploader$UploadedFile;->id:Ljava/lang/String;

    :goto_1
    return-void
.end method
