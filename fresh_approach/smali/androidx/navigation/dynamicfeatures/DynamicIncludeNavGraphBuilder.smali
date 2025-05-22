.class public final Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicIncludeNavGraphBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicIncludeNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicIncludeNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder\n*L\n1#1,114:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;",
        "dynamicIncludeGraphNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;",
        "id",
        "",
        "moduleName",
        "",
        "graphResourceName",
        "(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V",
        "graphPackage",
        "getGraphPackage",
        "()Ljava/lang/String;",
        "setGraphPackage",
        "(Ljava/lang/String;)V",
        "build",
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
.field private final dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

.field private graphPackage:Ljava/lang/String;

.field private final graphResourceName:Ljava/lang/String;

.field private final moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dynamicIncludeGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphResourceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    iput-object p4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->build()Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;
    .locals 5

    .line 95
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;

    .line 96
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 99
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setModuleName(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    invoke-virtual {v4}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    xor-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 106
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphPackage(Ljava/lang/String;)V

    .line 108
    :goto_3
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 111
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphResourceName(Ljava/lang/String;)V

    return-object v0

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Graph resource name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 103
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Graph package name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 96
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getGraphPackage()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final setGraphPackage(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    return-void
.end method
