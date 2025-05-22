.class Lcom/powervision/sdk/Ap03Manager$7;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnStartFollowAndSetFollowModeListener;


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

    .line 546
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$7;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStartFollowAndSetFollowMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$7;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$7;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$700(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/powervision/sdk/callback/Ap03OnStartFolllowAndSetFollowModeListener;->getFollowModeInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
