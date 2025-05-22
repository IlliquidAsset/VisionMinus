.class public final Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicFragmentNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicFragmentNavigatorDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicFragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder\n*L\n1#1,78:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        "navigator",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;",
        "id",
        "",
        "fragmentClassName",
        "",
        "(Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;ILjava/lang/String;)V",
        "moduleName",
        "getModuleName",
        "()Ljava/lang/String;",
        "setModuleName",
        "(Ljava/lang/String;)V",
        "build",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final fragmentClassName:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;ILjava/lang/String;)V
    .locals 1

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentClassName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    check-cast p1, Landroidx/navigation/Navigator;

    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->fragmentClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->build()Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;
    .locals 2

    .line 73
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;

    .line 74
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->fragmentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;->setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 75
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator$Destination;->setModuleName(Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.dynamicfeatures.fragment.DynamicFragmentNavigator.Destination"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method
