.class public final Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilderKt;
.super Ljava/lang/Object;
.source "DynamicIncludeNavGraphBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicIncludeNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicIncludeNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilderKt\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,114:1\n57#1,6:115\n58#1:121\n59#1,3:123\n39#2:122\n39#2:126\n*E\n*S KotlinDebug\n*F\n+ 1 DynamicIncludeNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilderKt\n*L\n40#1,6:115\n40#1:121\n40#1,3:123\n40#1:122\n58#1:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\u0008\u001a@\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "includeDynamic",
        "",
        "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
        "id",
        "",
        "moduleName",
        "",
        "graphResourceName",
        "builder",
        "Lkotlin/Function1;",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final includeDynamic(Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$includeDynamic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphResourceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 122
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    const-string v1, "getNavigator(clazz.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 115
    new-instance v1, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;-><init>(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    check-cast v1, Landroidx/navigation/NavDestinationBuilder;

    .line 115
    invoke-virtual {p0, v1}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final includeDynamic(Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$includeDynamic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphResourceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 126
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    const-string v1, "getNavigator(clazz.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 57
    new-instance v1, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;-><init>(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/navigation/NavDestinationBuilder;

    .line 57
    invoke-virtual {p0, v1}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method
