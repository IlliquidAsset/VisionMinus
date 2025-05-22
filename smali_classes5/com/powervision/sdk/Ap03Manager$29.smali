.class Lcom/powervision/sdk/Ap03Manager$29;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSmartFunctionCurrentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$29;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmartFunctionCurrent(FFFFI)V
    .locals 8

    .line 1232
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$29;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1233
    invoke-interface/range {v2 .. v7}, Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;->getSmartFunctionCurrentData(FFFFI)V

    goto :goto_0

    :cond_0
    return-void
.end method
