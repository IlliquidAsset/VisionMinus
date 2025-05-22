.class Lcom/powervision/sdk/Ap03Manager$9;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnROISetParamResultListener;


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

    .line 579
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$9;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getROIParamResult(Ljava/lang/String;II)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$9;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$900(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SurroundListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/sdk/callback/Ap03SurroundListener;->onSetParmasResult(Ljava/lang/String;II)V

    return-void
.end method
