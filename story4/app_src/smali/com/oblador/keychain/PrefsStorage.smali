.class public Lcom/oblador/keychain/PrefsStorage;
.super Ljava/lang/Object;
.source "PrefsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oblador/keychain/PrefsStorage$ResultSet;
    }
.end annotation


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RN_KEYCHAIN"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oblador/keychain/PrefsStorage;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getBytes(Ljava/lang/String;)[B
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/oblador/keychain/PrefsStorage;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 100
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private getBytesForPassword(Ljava/lang/String;)[B
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getBytesForUsername(Ljava/lang/String;)[B
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getCipherStorageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForCipherStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/oblador/keychain/PrefsStorage;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyForCipherStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyForPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":p"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyForUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":u"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getEncryptedEntry(Ljava/lang/String;)Lcom/oblador/keychain/PrefsStorage$ResultSet;
    .locals 3

    .line 34
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getBytesForUsername(Ljava/lang/String;)[B

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getBytesForPassword(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getCipherStorageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "FacebookConceal"

    .line 42
    :cond_0
    new-instance v2, Lcom/oblador/keychain/PrefsStorage$ResultSet;

    invoke-direct {v2, p1, v0, v1}, Lcom/oblador/keychain/PrefsStorage$ResultSet;-><init>(Ljava/lang/String;[B[B)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForCipherStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v2, p0, Lcom/oblador/keychain/PrefsStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 53
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeEncryptedEntry(Ljava/lang/String;Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;)V
    .locals 5

    .line 59
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1}, Lcom/oblador/keychain/PrefsStorage;->getKeyForCipherStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v2, p0, Lcom/oblador/keychain/PrefsStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p2, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->username:Ljava/lang/Object;

    check-cast v3, [B

    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p2, Lcom/oblador/keychain/cipherStorage/CipherStorage$CipherResult;->password:Ljava/lang/Object;

    check-cast v2, [B

    .line 65
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p2, p2, Lcom/oblador/keychain/cipherStorage/CipherStorage$EncryptionResult;->cipherStorage:Lcom/oblador/keychain/cipherStorage/CipherStorage;

    .line 66
    invoke-interface {p2}, Lcom/oblador/keychain/cipherStorage/CipherStorage;->getCipherStorageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
