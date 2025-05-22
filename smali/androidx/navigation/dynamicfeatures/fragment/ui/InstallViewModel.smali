.class public final Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "InstallViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "installMonitor",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "getInstallMonitor",
        "()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;",
        "setInstallMonitor",
        "(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V",
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
.field public static final Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;

.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;

    .line 29
    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion$FACTORY$1;

    invoke-direct {v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion$FACTORY$1;-><init>()V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    sput-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFACTORY$cp()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 26
    sget-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method


# virtual methods
.method public final getInstallMonitor()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-object v0
.end method

.method public final setInstallMonitor(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->installMonitor:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    return-void
.end method
