.class Lcom/powervision/sdk/Ap03Manager$42;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetTakeoffPointResultListener;


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

    .line 1563
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$42;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTakeoffPointResult(III)V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$42;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$4100(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$42;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$4100(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/sdk/callback/Ap03NotifyOnGetTakeoffPointResultListener;->getTakeoffPointResult(III)V

    :cond_0
    return-void
.end method
