.class public final synthetic Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/fragment/HomeFragment$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/fragment/HomeFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;->f$0:Lcom/powervision/home/ui/fragment/HomeFragment$1;

    iput p2, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;->f$0:Lcom/powervision/home/ui/fragment/HomeFragment$1;

    iget v1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$HomeFragment$1$-HHpbk-YEwvv52IjCzcDcR6pmLE;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/fragment/HomeFragment$1;->lambda$onPageSelected$0$HomeFragment$1(I)V

    return-void
.end method
