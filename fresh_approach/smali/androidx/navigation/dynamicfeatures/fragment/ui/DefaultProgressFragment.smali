.class public final Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;
.super Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;
.source "DefaultProgressFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultProgressFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultProgressFragment.kt\nandroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment\n*L\n1#1,124:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\u0012\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\nH\u0014J\u0008\u0010\u0011\u001a\u00020\nH\u0016J\u0012\u0010\u0012\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000cH\u0014J \u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J\u001a\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;",
        "Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;",
        "()V",
        "action",
        "Landroid/widget/Button;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "title",
        "Landroid/widget/TextView;",
        "displayAction",
        "",
        "text",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "displayErrorState",
        "onCancelled",
        "onDestroyView",
        "onFailed",
        "errorCode",
        "onProgress",
        "status",
        "bytesDownloaded",
        "",
        "bytesTotal",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setActivityIcon",
        "activityIcon",
        "Landroid/widget/ImageView;",
        "Companion",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;

.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DefaultProgressFragment"


# instance fields
.field private action:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    sget v0, Landroidx/navigation/dynamicfeatures/fragment/R$layout;->dynamic_feature_install_fragment:I

    invoke-direct {p0, v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;-><init>(I)V

    return-void
.end method

.method private final displayAction(ILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->action:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 117
    new-instance v1, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;

    invoke-direct {v1, p1, p2}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$displayAction$$inlined$run$lambda$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final displayErrorState(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :cond_0
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final setActivityIcon(Landroid/widget/ImageView;)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 2

    .line 93
    sget v0, Landroidx/navigation/dynamicfeatures/fragment/R$string;->installation_cancelled:I

    invoke-direct {p0, v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->displayErrorState(I)V

    .line 94
    sget v0, Landroidx/navigation/dynamicfeatures/fragment/R$string;->retry:I

    new-instance v1, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$onCancelled$1;

    invoke-direct {v1, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$onCancelled$1;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->displayAction(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->title:Landroid/widget/TextView;

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 66
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->action:Landroid/widget/Button;

    return-void
.end method

.method protected onFailed(I)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installation failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultProgressFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget p1, Landroidx/navigation/dynamicfeatures/fragment/R$string;->installation_failed:I

    invoke-direct {p0, p1}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->displayErrorState(I)V

    .line 100
    sget p1, Landroidx/navigation/dynamicfeatures/fragment/R$string;->ok:I

    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$onFailed$1;

    invoke-direct {v0, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$onFailed$1;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->displayAction(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected onProgress(IJJ)V
    .locals 4

    .line 81
    iget-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    int-to-long v1, v1

    mul-long v1, v1, p2

    .line 86
    div-long/2addr v1, p4

    long-to-int p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget p2, Landroidx/navigation/dynamicfeatures/fragment/R$id;->progress_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->title:Landroid/widget/TextView;

    .line 56
    sget p2, Landroidx/navigation/dynamicfeatures/fragment/R$id;->installation_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 57
    sget p2, Landroidx/navigation/dynamicfeatures/fragment/R$id;->progress_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.progress_icon)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->setActivityIcon(Landroid/widget/ImageView;)V

    .line 58
    sget p2, Landroidx/navigation/dynamicfeatures/fragment/R$id;->progress_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;->action:Landroid/widget/Button;

    return-void
.end method
