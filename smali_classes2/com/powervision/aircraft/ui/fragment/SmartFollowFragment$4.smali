.class Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;
.super Ljava/lang/Object;
.source "SmartFollowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->checkAndReSend(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;I)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x1f4

    .line 846
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 847
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)I

    move-result v0

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;->val$flag:I

    if-eq v0, v1, :cond_0

    .line 848
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartFollowManager;->getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$4;->val$flag:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/smart/SmartFollowManager;->setFollowParams(I[I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
