.class public final Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;
.super Landroidx/navigation/ActivityNavigator;
.source "DynamicActivityNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J0\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;",
        "Landroidx/navigation/ActivityNavigator;",
        "context",
        "Landroid/content/Context;",
        "installManager",
        "Landroidx/navigation/dynamicfeatures/DynamicInstallManager;",
        "(Landroid/content/Context;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;)V",
        "packageName",
        "",
        "getPackageName",
        "()Ljava/lang/String;",
        "createDestination",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;",
        "navigate",
        "Landroidx/navigation/NavDestination;",
        "destination",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "args",
        "Landroid/os/Bundle;",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "Destination",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final installManager:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->installManager:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.packageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->createDestination()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0
.end method

.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->createDestination()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
    .locals 2

    .line 66
    new-instance v0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-object v1, p0

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 3

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p4, Landroidx/navigation/dynamicfeatures/DynamicExtras;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicExtras;

    .line 52
    instance-of v1, p1, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, p1

    check-cast v1, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->getModuleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->installManager:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

    invoke-virtual {v2, v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->needsInstall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->installManager:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->performInstall(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/dynamicfeatures/DynamicExtras;Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/DynamicExtras;->getDestinationExtras()Landroidx/navigation/Navigator$Extras;

    move-result-object p4

    .line 58
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/navigation/ActivityNavigator;->navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 34
    check-cast p1, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method
