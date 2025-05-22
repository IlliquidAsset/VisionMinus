.class public final Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilderKt;
.super Ljava/lang/Object;
.source "DynamicFragmentNavigatorDestinationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicFragmentNavigatorDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicFragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilderKt\n+ 2 FragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/fragment/FragmentNavigatorDestinationBuilderKt\n+ 3 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,78:1\n54#1,5:88\n55#1:93\n56#1,2:95\n38#2,5:79\n39#2:84\n40#2,2:86\n39#3:85\n39#3:94\n39#3:97\n*E\n*S KotlinDebug\n*F\n+ 1 DynamicFragmentNavigatorDestinationBuilder.kt\nandroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilderKt\n*L\n43#1,5:88\n43#1:93\n43#1,2:95\n34#1,5:79\n34#1:84\n34#1,2:86\n34#1:85\n43#1:94\n55#1:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0086\u0008\u001a<\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00a8\u0006\r"
    }
    d2 = {
        "fragment",
        "",
        "F",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
        "id",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "fragmentClassName",
        "",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic fragment(Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
            "I)V"
        }
    .end annotation

    const-string v0, "$this$fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p0, Landroidx/navigation/NavGraphBuilder;

    .line 84
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/fragment/FragmentNavigator;

    .line 85
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    const-string v1, "getNavigator(clazz.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator;

    const/4 v1, 0x4

    const-string v2, "F"

    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 79
    new-instance v2, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;

    invoke-direct {v2, v0, p1, v1}, Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/fragment/FragmentNavigator;ILkotlin/reflect/KClass;)V

    .line 34
    check-cast v2, Landroidx/navigation/NavDestinationBuilder;

    .line 79
    invoke-virtual {p0, v2}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final fragment(Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentClassName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    .line 97
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    const-string v1, "getNavigator(clazz.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    .line 54
    new-instance v1, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;

    invoke-direct {v1, v0, p1, p2}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;ILjava/lang/String;)V

    .line 58
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/navigation/NavDestinationBuilder;

    .line 54
    invoke-virtual {p0, v1}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic fragment(Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "F"

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    .line 94
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    const-string v2, "getNavigator(clazz.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;

    .line 88
    new-instance v2, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;

    invoke-direct {v2, v1, p1, v0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigatorDestinationBuilder;-><init>(Landroidx/navigation/dynamicfeatures/fragment/DynamicFragmentNavigator;ILjava/lang/String;)V

    .line 92
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/navigation/NavDestinationBuilder;

    .line 88
    invoke-virtual {p0, v2}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method
