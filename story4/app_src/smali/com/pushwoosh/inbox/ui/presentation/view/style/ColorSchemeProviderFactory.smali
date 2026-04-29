.class public final Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;
.super Ljava/lang/Object;
.source "ColorSchemeProviderFactory.kt"


# static fields
.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProviderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateColorScheme(Landroid/content/Context;)Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ContextColorSchemeProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
