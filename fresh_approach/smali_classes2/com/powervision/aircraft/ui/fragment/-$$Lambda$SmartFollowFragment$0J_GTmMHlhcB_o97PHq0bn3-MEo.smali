.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowFragment$0J_GTmMHlhcB_o97PHq0bn3-MEo;->f$1:F

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->lambda$onSmartFunctionActuaSpeed$2$SmartFollowFragment(F)V

    return-void
.end method
