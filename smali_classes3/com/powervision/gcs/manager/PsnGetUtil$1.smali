.class Lcom/powervision/gcs/manager/PsnGetUtil$1;
.super Ljava/lang/Object;
.source "PsnGetUtil.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PsnGetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PsnGetUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PsnGetUtil;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetParameter(Ljava/lang/String;SSLjava/lang/Object;)V
    .locals 0

    const-string p2, "PV_RO_PSN_"

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, ""

    .line 52
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 55
    instance-of p2, p4, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lcom/powervision/gcs/utils/BinaryUtil;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object p1, p1, Lcom/powervision/gcs/manager/PsnGetUtil;->checkThread:Ljava/lang/Thread;

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;-><init>(Lcom/powervision/gcs/manager/PsnGetUtil$1;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p1, Lcom/powervision/gcs/manager/PsnGetUtil;->checkThread:Ljava/lang/Thread;

    .line 117
    iget-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object p1, p1, Lcom/powervision/gcs/manager/PsnGetUtil;->checkThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
