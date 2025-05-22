.class Lcom/powervision/gcs/utils/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/FileUtil;->getFileMd5(Ljava/io/File;Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/FileUtil;

.field final synthetic val$callBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/FileUtil;Ljava/io/File;Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/powervision/gcs/utils/FileUtil$1;->this$0:Lcom/powervision/gcs/utils/FileUtil;

    iput-object p2, p0, Lcom/powervision/gcs/utils/FileUtil$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/powervision/gcs/utils/FileUtil$1;->val$callBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileUtil$1;->this$0:Lcom/powervision/gcs/utils/FileUtil;

    iget-object v1, p0, Lcom/powervision/gcs/utils/FileUtil$1;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/utils/FileUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/powervision/gcs/utils/FileUtil$1;->val$callBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    invoke-interface {v1, v0}, Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;->onSuccessBack(Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileUtil$1;->val$callBack:Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;

    const-string v1, "err"

    invoke-interface {v0, v1}, Lcom/powervision/gcs/callback/BaseSuccessFailStatusBack;->onFailBack(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
