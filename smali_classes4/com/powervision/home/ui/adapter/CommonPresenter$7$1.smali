.class Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter$7;->commplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$7;

.field final synthetic val$downLoadType:I

.field final synthetic val$firmwareTotalSize:J

.field final synthetic val$releaseNote_string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter$7;ILjava/lang/String;J)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$7;

    iput p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$downLoadType:I

    iput-object p3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$releaseNote_string:Ljava/lang/String;

    iput-wide p4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$firmwareTotalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 284
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$7;

    iget-object v1, v0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$downLoadType:I

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$7;

    iget v4, v0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->val$updateDevice:I

    iget-object v5, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$releaseNote_string:Ljava/lang/String;

    iget-wide v6, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->val$firmwareTotalSize:J

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$7$1;->this$1:Lcom/powervision/home/ui/adapter/CommonPresenter$7;

    iget-boolean v8, v0, Lcom/powervision/home/ui/adapter/CommonPresenter$7;->val$jump:Z

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/powervision/home/ui/adapter/CommonPresenter;->toDetailActivity(IIILjava/lang/String;JZ)V

    return-void
.end method
