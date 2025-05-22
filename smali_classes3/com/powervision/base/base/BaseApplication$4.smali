.class Lcom/powervision/base/base/BaseApplication$4;
.super Ljava/util/TimerTask;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/BaseApplication;->startUtMissUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/BaseApplication;

.field final synthetic val$finalUasId:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/BaseApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/powervision/base/base/BaseApplication$4;->this$0:Lcom/powervision/base/base/BaseApplication;

    iput-object p2, p0, Lcom/powervision/base/base/BaseApplication$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/base/base/BaseApplication$4;->val$finalUasId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication$4;->val$orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/base/base/BaseApplication$4;->val$finalUasId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/UtMissUtils;->uploadUtMissFlyInfoFun(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
