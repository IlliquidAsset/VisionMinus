.class public final Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;
.super Landroidx/navigation/NavGraphBuilder;
.source "DynamicNavGraphBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,107:1\n39#2:108\n*E\n*S KotlinDebug\n*F\n+ 1 DynamicNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder\n*L\n94#1:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
        "Landroidx/navigation/NavGraphBuilder;",
        "provider",
        "Landroidx/navigation/NavigatorProvider;",
        "id",
        "",
        "startDestination",
        "(Landroidx/navigation/NavigatorProvider;II)V",
        "moduleName",
        "",
        "getModuleName",
        "()Ljava/lang/String;",
        "setModuleName",
        "(Ljava/lang/String;)V",
        "progressDestination",
        "getProgressDestination",
        "()I",
        "setProgressDestination",
        "(I)V",
        "build",
        "Landroidx/navigation/NavGraph;",
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
.field private moduleName:Ljava/lang/String;

.field private progressDestination:I

.field private startDestination:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;II)V

    iput p3, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->startDestination:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/NavGraph;
    .locals 3

    .line 94
    invoke-super {p0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 95
    instance-of v1, v0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    check-cast v1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->setModuleName(Ljava/lang/String;)V

    .line 97
    iget v2, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestination:I

    invoke-virtual {v1, v2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->setProgressDestination(I)V

    .line 98
    iget v1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestination:I

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    .line 108
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    const-string v2, "getNavigator(clazz.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    check-cast v1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    .line 101
    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;->getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release()Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressDestination()I
    .locals 1

    .line 88
    iget v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestination:I

    return v0
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setProgressDestination(I)V
    .locals 0

    .line 88
    iput p1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestination:I

    return-void
.end method
