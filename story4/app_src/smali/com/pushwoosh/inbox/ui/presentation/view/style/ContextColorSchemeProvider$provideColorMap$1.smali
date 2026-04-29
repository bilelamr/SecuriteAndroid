.class final Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextColorSchemeProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;->provideColorMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/content/res/TypedArray;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextColorSchemeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextColorSchemeProvider.kt\ncom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1\n*L\n1#1,246:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $result:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;->$result:Ljava/util/Map;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2, p3}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;->invoke(IILandroid/content/res/TypedArray;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(IILandroid/content/res/TypedArray;)V
    .locals 2

    const-string v0, "typedArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider$provideColorMap$1;->$result:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
