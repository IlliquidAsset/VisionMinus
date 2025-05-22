.class Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;
.super Ljava/lang/Object;
.source "SmartFollowGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->onSetParmasResultSuccess(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$1;->val$type:I

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V

    return-void
.end method
