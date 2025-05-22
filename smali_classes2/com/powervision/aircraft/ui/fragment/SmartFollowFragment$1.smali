.class Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$1;
.super Ljava/lang/Object;
.source "SmartFollowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->switchRecordAndPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V

    return-void
.end method
