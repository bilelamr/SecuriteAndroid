.class final synthetic Lcom/pushwoosh/internal/crash/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final a:Lcom/pushwoosh/internal/crash/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/internal/crash/e;

    invoke-direct {v0}, Lcom/pushwoosh/internal/crash/e;-><init>()V

    sput-object v0, Lcom/pushwoosh/internal/crash/e;->a:Lcom/pushwoosh/internal/crash/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Lcom/pushwoosh/internal/crash/e;->a:Lcom/pushwoosh/internal/crash/e;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/pushwoosh/internal/crash/d;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
