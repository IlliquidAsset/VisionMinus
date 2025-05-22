.class Lcom/lewis/edit/ui/activity/AVEditActivity$4;
.super Lcom/cclink/obbdownloader/ObbInfo;
.source "AVEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity;->checkExpansionFilesDelivered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 2701
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$4;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainObbFileSize()J
    .locals 2

    const-wide/32 v0, 0x12b4a10

    return-wide v0
.end method

.method public getMainObbVersion()I
    .locals 1

    .line 2713
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmOhP0lWIgb5qD6zSJl/GPxjpBFqGfK5r12rRLSUw/Hw2K2nZLjPdrH2Ry+cWll1hQ/qPSY3+fk/4AVRaSKWX0vRgzUs2XiQ95sPZLlb5RudniTmZsJ/fqrzG21G08/ap7je4wE4QZekY0zQJM/EiCDa32Uc1QRQE+RPmZeGQ6aNEDgObMDCGEWc/Pa6zcuOaKbdU7hJasKlAIE35HGGjUc62nZbNyzv/bTdJSRjhpSA5LiY3gxasA3g3NMOW0mLbSTgd7F9upNArk8RkwKcvem/p6dYiaaQmXiOe4oga1yQHViamLIjK34xgVQjcCWoRa4C1e9oLCxuWDgsDJ/Zb0wIDAQAB"

    return-object v0
.end method
