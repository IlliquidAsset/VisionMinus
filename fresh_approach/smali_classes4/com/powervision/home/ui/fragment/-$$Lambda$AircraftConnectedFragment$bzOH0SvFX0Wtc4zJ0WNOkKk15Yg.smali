.class public final synthetic Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$bzOH0SvFX0Wtc4zJ0WNOkKk15Yg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$bzOH0SvFX0Wtc4zJ0WNOkKk15Yg;->f$0:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/home/ui/fragment/-$$Lambda$AircraftConnectedFragment$bzOH0SvFX0Wtc4zJ0WNOkKk15Yg;->f$0:Landroid/widget/PopupWindow;

    invoke-static {v0, p1}, Lcom/powervision/home/ui/fragment/AircraftConnectedFragment;->lambda$showSupportPopWindow$2(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
