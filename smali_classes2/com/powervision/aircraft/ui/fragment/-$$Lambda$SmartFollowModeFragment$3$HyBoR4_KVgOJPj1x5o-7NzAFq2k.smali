.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;->lambda$onSetGetIntParamDate$0$SmartFollowModeFragment$3(I)V

    return-void
.end method
