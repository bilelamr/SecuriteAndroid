.class public Lcom/oblador/keychain/PrefsStorage$ResultSet;
.super Ljava/lang/Object;
.source "PrefsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oblador/keychain/PrefsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultSet"
.end annotation


# instance fields
.field public final cipherStorageName:Ljava/lang/String;

.field public final passwordBytes:[B

.field public final usernameBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oblador/keychain/PrefsStorage$ResultSet;->cipherStorageName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/oblador/keychain/PrefsStorage$ResultSet;->usernameBytes:[B

    .line 23
    iput-object p3, p0, Lcom/oblador/keychain/PrefsStorage$ResultSet;->passwordBytes:[B

    return-void
.end method
