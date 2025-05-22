.class public final synthetic Lcom/powervision/user/ui/fragment/-$$Lambda$UserFragment$1MwevKyW2y--2CUJZfrAFXefCFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/user/ui/fragment/UserFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/user/ui/fragment/UserFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/user/ui/fragment/-$$Lambda$UserFragment$1MwevKyW2y--2CUJZfrAFXefCFY;->f$0:Lcom/powervision/user/ui/fragment/UserFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/user/ui/fragment/-$$Lambda$UserFragment$1MwevKyW2y--2CUJZfrAFXefCFY;->f$0:Lcom/powervision/user/ui/fragment/UserFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/powervision/user/ui/fragment/UserFragment;->lambda$setListener$0$UserFragment(Ljava/lang/Integer;)V

    return-void
.end method
