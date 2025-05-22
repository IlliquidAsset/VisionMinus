.class Lcom/powervision/gcs/utils/NewActiviteUtil$1;
.super Ljava/lang/Object;
.source "NewActiviteUtil.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/NewActiviteUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/NewActiviteUtil;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetParameter(Ljava/lang/String;SSLjava/lang/Object;)V
    .locals 1

    const-string p2, "PV_V_KEY_FLAG"

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 266
    instance-of p1, p4, Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 267
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    .line 270
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/utils/NewActiviteUtil;->notifyActivityStatus(I)V

    .line 271
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object p1, p1, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askActivityCode()V

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->onSysdoSetvalitekeyStatusError()V

    goto :goto_1

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/utils/NewActiviteUtil;->notifyActivityStatus(I)V

    .line 281
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-virtual {p1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->onSysdoSetvalitekeyStatusSuccess()V

    goto :goto_1

    :cond_2
    const-string p2, "PV_RO_KEY_"

    .line 285
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, ""

    .line 286
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 289
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_3

    .line 290
    iget-object p2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object p2, p2, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-static {p3}, Lcom/powervision/gcs/utils/BinaryUtil;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_0

    .line 292
    :cond_3
    instance-of p2, p4, Ljava/lang/Float;

    if-eqz p2, :cond_4

    goto :goto_0

    .line 296
    :cond_4
    iget-object p2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object p2, p2, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lcom/powervision/gcs/utils/BinaryUtil;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    .line 301
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object p1, p1, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    if-nez p1, :cond_5

    .line 303
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;

    invoke-direct {p3, p0}, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;-><init>(Lcom/powervision/gcs/utils/NewActiviteUtil$1;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p1, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    .line 360
    iget-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object p1, p1, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_1
    return-void
.end method
