.class Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;
.super Ljava/lang/Object;
.source "Dl01BsOperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;->dl01BSOper(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;

.field final synthetic val$command:I

.field final synthetic val$status:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;IILjava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->this$1:Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;

    iput p2, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$command:I

    iput p3, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$status:I

    iput-object p4, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->this$1:Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;

    iget-object v0, v0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2;->this$0:Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    iget v1, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$command:I

    iget v2, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$status:I

    iget-object v3, p0, Lcom/powervision/gcs/manager/Dl01BsOperHelper$2$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->notifyListeners(IILjava/lang/String;)V

    return-void
.end method
