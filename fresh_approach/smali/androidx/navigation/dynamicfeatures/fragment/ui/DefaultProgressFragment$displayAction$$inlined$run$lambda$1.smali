.class final Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "DefaultProgressFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->displayAction(ILkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "androidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $onClick$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $text$inlined:I


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    iput p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;->$text$inlined:I

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;->$onClick$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;->$onClick$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
