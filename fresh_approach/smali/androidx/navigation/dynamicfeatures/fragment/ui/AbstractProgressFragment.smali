.class public abstract Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "AbstractProgressFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;,
        Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractProgressFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractProgressFragment.kt\nandroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,202:1\n56#2,3:203\n56#2,3:206\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractProgressFragment.kt\nandroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment\n*L\n52#1,3:203\n52#1,3:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008&\u0018\u0000 ,2\u00020\u0001:\u0002,-B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0005J\"\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H$J\u0012\u0010\u001f\u001a\u00020\u00182\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010!\u001a\u00020\u00182\u0008\u0008\u0001\u0010\"\u001a\u00020\u0004H$J\u0008\u0010#\u001a\u00020\u0018H\u0014J\"\u0010$\u001a\u00020\u00182\u0008\u0008\u0001\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H$J\u0008\u0010)\u001a\u00020\u0018H\u0016J\u0010\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0007H\u0016R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000b\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000b\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "contentLayoutId",
        "",
        "(I)V",
        "destinationArgs",
        "Landroid/os/Bundle;",
        "getDestinationArgs",
        "()Landroid/os/Bundle;",
        "destinationArgs$delegate",
        "Lkotlin/Lazy;",
        "destinationId",
        "getDestinationId",
        "()I",
        "destinationId$delegate",
        "installViewModel",
        "Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;",
        "getInstallViewModel",
        "()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;",
        "installViewModel$delegate",
        "navigated",
        "",
        "navigate",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCancelled",
        "onCreate",
        "savedInstanceState",
        "onFailed",
        "errorCode",
        "onInstalled",
        "onProgress",
        "status",
        "bytesDownloaded",
        "",
        "bytesTotal",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "Companion",
        "StateObserver",
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
.field public static final Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;

.field private static final INSTALL_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AbstractProgress"


# instance fields
.field private final destinationArgs$delegate:Lkotlin/Lazy;

.field private final destinationId$delegate:Lkotlin/Lazy;

.field private final installViewModel$delegate:Lkotlin/Lazy;

.field private navigated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    sget-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;->INSTANCE:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 203
    new-instance v1, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$1;

    invoke-direct {v1, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 205
    const-class v2, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$2;

    invoke-direct {v3, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v2, v3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->installViewModel$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationId$2;

    invoke-direct {v0, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationId$2;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationId$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationArgs$2;

    invoke-direct {v0, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationArgs$2;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationArgs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 52
    sget-object p1, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;->INSTANCE:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 206
    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$3;

    invoke-direct {v0, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 208
    const-class v1, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$4;

    invoke-direct {v2, v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$$special$$inlined$viewModels$4;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v1, v2, p1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->installViewModel$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationId$2;

    invoke-direct {p1, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationId$2;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationId$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationArgs$2;

    invoke-direct {p1, p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$destinationArgs$2;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationArgs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getDestinationArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationArgs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private final getDestinationId()I
    .locals 1

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->destinationId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getInstallViewModel()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->installViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    return-object v0
.end method


# virtual methods
.method protected final navigate()V
    .locals 7

    const-string v0, "AbstractProgress"

    const-string v1, "navigate: "

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    invoke-direct {v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;-><init>()V

    .line 101
    new-instance v2, Landroidx/navigation/dynamicfeatures/DynamicExtras;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, v3}, Landroidx/navigation/dynamicfeatures/DynamicExtras;-><init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v4

    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->getDestinationId()I

    move-result v5

    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->getDestinationArgs()Landroid/os/Bundle;

    move-result-object v6

    check-cast v2, Landroidx/navigation/Navigator$Extras;

    invoke-virtual {v4, v5, v6, v3, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 103
    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->isInstallRequired()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "navigate: install not required"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigated:Z

    goto :goto_0

    :cond_0
    const-string v2, "navigate: setting install monitor"

    .line 107
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->getInstallViewModel()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->setInstallMonitor(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->onCancelled()V

    :cond_0
    return-void
.end method

.method protected abstract onCancelled()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "dfn:navigated"

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigated:Z

    :cond_0
    return-void
.end method

.method protected abstract onFailed(I)V
.end method

.method protected onInstalled()V
    .locals 0

    return-void
.end method

.method protected abstract onProgress(IJJ)V
.end method

.method public onResume()V
    .locals 4

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 76
    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigated:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->getInstallViewModel()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    move-result-object v0

    const-string v1, "AbstractProgress"

    if-nez v0, :cond_1

    const-string v0, "onResume: monitor is null, navigating"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigate()V

    .line 84
    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->getInstallViewModel()Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "onResume: monitor is now not null, observing"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;->getStatus()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;

    invoke-direct {v3, p0, v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$StateObserver;-><init>(Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-boolean v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;->navigated:Z

    const-string v1, "dfn:navigated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
