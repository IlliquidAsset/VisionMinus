.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/MediaFragment;

.field public final synthetic f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/MediaFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;->f$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;->f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;->f$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$MediaFragment$DU2O2aMoXfvGXWwnuznFccyMQuM;->f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/media/ui/fragment/MediaFragment;->lambda$showBottomDialog$1$MediaFragment(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
