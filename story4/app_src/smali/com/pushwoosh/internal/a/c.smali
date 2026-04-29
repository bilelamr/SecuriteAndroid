.class public Lcom/pushwoosh/internal/a/c;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/math/BigInteger;

.field protected static final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00BF6F5CA2FEDD7CE104AD3582E5FABB6473F473980CA8A90D9EDBD0E51947933BCC4DDF3951991FC592CBE9AA3D716C08F771FEE763D7304B5863E8E94BAF30340E3423D09AE3C966C6075F1AD138838D947228C412513F9116AEE283A0AC1B99C8FD2304E2929285C83B3C5767CA3A632293EB7DAC1A131E2C86022366559642E08F9DD0F4F78656403A6CE61251B4C9861E5EC353E1D446D09F294E1E7FD32DCAF66FCEC80BCB9FCAE9E6716BF84FDE33CD0F171AFA103A89B055005FEBCA316DE87BE62B8ED1B7AEF24CEE26A35A5076DCA55DF02C919DB195A29481A8AF1A12D4EA931DDF082B2227F877474C0A53A64825C7409718F06BEF79A61F3CFA3F"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pushwoosh/internal/a/c;->a:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "65537"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pushwoosh/internal/a/c;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    sget-object v2, Lcom/pushwoosh/internal/a/c;->a:Ljava/math/BigInteger;

    sget-object v3, Lcom/pushwoosh/internal/a/c;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
