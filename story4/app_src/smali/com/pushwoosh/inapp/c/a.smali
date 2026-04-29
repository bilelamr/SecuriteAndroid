.class public Lcom/pushwoosh/inapp/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/pushwoosh/inapp/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v0, "lowercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "UPPERCASE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "CapitalizeAllFirst"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "CapitalizeFirst"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "cent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "dollar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "comma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "euro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "jpy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "lira"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "M-d-y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "m-d-y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "M d y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "M d Y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "l"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "M d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string v0, "H:i"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string v0, "m-d-y H:i"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/pushwoosh/internal/utils/PWLog;->exception(Ljava/lang/Throwable;)V

    return-object p0

    :cond_13
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AD"

    const-string v2, "Andorra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AE"

    const-string v2, "United Arab Emirates"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AF"

    const-string v2, "Afghanistan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AG"

    const-string v2, "Antigua and Barbuda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AI"

    const-string v2, "Anguilla"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AL"

    const-string v2, "Albania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AM"

    const-string v2, "Armenia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AO"

    const-string v2, "Angola"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AP"

    const-string v2, "Asia/Pacific Region"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AQ"

    const-string v2, "Antarctica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AR"

    const-string v2, "Argentina"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AS"

    const-string v2, "American Samoa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AT"

    const-string v2, "Austria"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AU"

    const-string v2, "Australia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AW"

    const-string v2, "Aruba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AX"

    const-string v2, "Aland Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "AZ"

    const-string v2, "Azerbaijan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BA"

    const-string v2, "Bosnia and Herzegovina"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BB"

    const-string v2, "Barbados"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BD"

    const-string v2, "Bangladesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BE"

    const-string v2, "Belgium"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BF"

    const-string v2, "Burkina Faso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BG"

    const-string v2, "Bulgaria"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BH"

    const-string v2, "Bahrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BI"

    const-string v2, "Burundi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BJ"

    const-string v2, "Benin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BL"

    const-string v2, "Saint Bartelemey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BM"

    const-string v2, "Bermuda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BN"

    const-string v2, "Brunei Darussalam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BO"

    const-string v2, "Bolivia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BQ"

    const-string v2, "Bonaire, Saint Eustatius and Saba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BR"

    const-string v2, "Brazil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BS"

    const-string v2, "Bahamas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BT"

    const-string v2, "Bhutan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BV"

    const-string v2, "Bouvet Island"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BW"

    const-string v2, "Botswana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BY"

    const-string v2, "Belarus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "BZ"

    const-string v2, "Belize"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CA"

    const-string v2, "Canada"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CC"

    const-string v2, "Cocos (Keeling) Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CD"

    const-string v2, "Congo, The Democratic Republic of the"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CF"

    const-string v2, "Central African Republic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CG"

    const-string v2, "Congo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CH"

    const-string v2, "Switzerland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CI"

    const-string v2, "Cote d\'Ivoire"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CK"

    const-string v2, "Cook Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CL"

    const-string v2, "Chile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CM"

    const-string v2, "Cameroon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "China"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CO"

    const-string v2, "Colombia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CR"

    const-string v2, "Costa Rica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CU"

    const-string v2, "Cuba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CV"

    const-string v2, "Cape Verde"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CW"

    const-string v2, "Curacao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CX"

    const-string v2, "Christmas Island"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CY"

    const-string v2, "Cyprus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "CZ"

    const-string v2, "Czech Republic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DE"

    const-string v2, "Germany"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DJ"

    const-string v2, "Djibouti"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DK"

    const-string v2, "Denmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DM"

    const-string v2, "Dominica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DO"

    const-string v2, "Dominican Republic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "DZ"

    const-string v2, "Algeria"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "EC"

    const-string v2, "Ecuador"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "EE"

    const-string v2, "Estonia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "EG"

    const-string v2, "Egypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "EH"

    const-string v2, "Western Sahara"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ER"

    const-string v2, "Eritrea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ES"

    const-string v2, "Spain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ET"

    const-string v2, "Ethiopia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "EU"

    const-string v2, "Europe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FI"

    const-string v2, "Finland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FJ"

    const-string v2, "Fiji"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FK"

    const-string v2, "Falkland Islands (Malvinas)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FM"

    const-string v2, "Micronesia, Federated States of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FO"

    const-string v2, "Faroe Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "FR"

    const-string v2, "France"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GA"

    const-string v2, "Gabon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GB"

    const-string v2, "United Kingdom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GD"

    const-string v2, "Grenada"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GE"

    const-string v2, "Georgia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GF"

    const-string v2, "French Guiana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GG"

    const-string v2, "Guernsey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GH"

    const-string v2, "Ghana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GI"

    const-string v2, "Gibraltar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GL"

    const-string v2, "Greenland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GM"

    const-string v2, "Gambia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GN"

    const-string v2, "Guinea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GP"

    const-string v2, "Guadeloupe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GQ"

    const-string v2, "Equatorial Guinea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GR"

    const-string v2, "Greece"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GS"

    const-string v2, "South Georgia and the South Sandwich Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GT"

    const-string v2, "Guatemala"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GU"

    const-string v2, "Guam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GW"

    const-string v2, "Guinea-Bissau"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "GY"

    const-string v2, "Guyana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HK"

    const-string v2, "Hong Kong"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HM"

    const-string v2, "Heard Island and McDonald Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HN"

    const-string v2, "Honduras"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HR"

    const-string v2, "Croatia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HT"

    const-string v2, "Haiti"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "HU"

    const-string v2, "Hungary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ID"

    const-string v2, "Indonesia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IE"

    const-string v2, "Ireland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IL"

    const-string v2, "Israel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IM"

    const-string v2, "Isle of Man"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "India"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IO"

    const-string v2, "British Indian Ocean Territory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IQ"

    const-string v2, "Iraq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IR"

    const-string v2, "Iran, Islamic Republic of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IS"

    const-string v2, "Iceland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "IT"

    const-string v2, "Italy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "JE"

    const-string v2, "Jersey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "JM"

    const-string v2, "Jamaica"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "JO"

    const-string v2, "Jordan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "JP"

    const-string v2, "Japan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KE"

    const-string v2, "Kenya"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KG"

    const-string v2, "Kyrgyzstan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KH"

    const-string v2, "Cambodia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KI"

    const-string v2, "Kiribati"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KM"

    const-string v2, "Comoros"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KN"

    const-string v2, "Saint Kitts and Nevis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KP"

    const-string v2, "Korea, Democratic People\'s Republic of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KR"

    const-string v2, "Korea, Republic of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KW"

    const-string v2, "Kuwait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KY"

    const-string v2, "Cayman Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "KZ"

    const-string v2, "Kazakhstan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LA"

    const-string v2, "Lao People\'s Democratic Republic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LB"

    const-string v2, "Lebanon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LC"

    const-string v2, "Saint Lucia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LI"

    const-string v2, "Liechtenstein"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LK"

    const-string v2, "Sri Lanka"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LR"

    const-string v2, "Liberia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LS"

    const-string v2, "Lesotho"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LT"

    const-string v2, "Lithuania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LU"

    const-string v2, "Luxembourg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LV"

    const-string v2, "Latvia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "LY"

    const-string v2, "Libyan Arab Jamahiriya"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MA"

    const-string v2, "Morocco"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MC"

    const-string v2, "Monaco"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MD"

    const-string v2, "Moldova, Republic of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ME"

    const-string v2, "Montenegro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MF"

    const-string v2, "Saint Martin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MG"

    const-string v2, "Madagascar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MH"

    const-string v2, "Marshall Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MK"

    const-string v2, "Macedonia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ML"

    const-string v2, "Mali"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MM"

    const-string v2, "Myanmar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MN"

    const-string v2, "Mongolia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MO"

    const-string v2, "Macao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MP"

    const-string v2, "Northern Mariana Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MQ"

    const-string v2, "Martinique"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MR"

    const-string v2, "Mauritania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MS"

    const-string v2, "Montserrat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MT"

    const-string v2, "Malta"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MU"

    const-string v2, "Mauritius"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MV"

    const-string v2, "Maldives"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MW"

    const-string v2, "Malawi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MX"

    const-string v2, "Mexico"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MY"

    const-string v2, "Malaysia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "MZ"

    const-string v2, "Mozambique"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NA"

    const-string v2, "Namibia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NC"

    const-string v2, "New Caledonia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NE"

    const-string v2, "Niger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NF"

    const-string v2, "Norfolk Island"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NG"

    const-string v2, "Nigeria"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NI"

    const-string v2, "Nicaragua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NL"

    const-string v2, "Netherlands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NO"

    const-string v2, "Norway"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NP"

    const-string v2, "Nepal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NR"

    const-string v2, "Nauru"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NU"

    const-string v2, "Niue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "NZ"

    const-string v2, "New Zealand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "OM"

    const-string v2, "Oman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PA"

    const-string v2, "Panama"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PE"

    const-string v2, "Peru"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PF"

    const-string v2, "French Polynesia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PG"

    const-string v2, "Papua New Guinea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PH"

    const-string v2, "Philippines"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PK"

    const-string v2, "Pakistan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PL"

    const-string v2, "Poland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PM"

    const-string v2, "Saint Pierre and Miquelon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PN"

    const-string v2, "Pitcairn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PR"

    const-string v2, "Puerto Rico"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PS"

    const-string v2, "Palestinian Territory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PT"

    const-string v2, "Portugal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PW"

    const-string v2, "Palau"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "PY"

    const-string v2, "Paraguay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "QA"

    const-string v2, "Qatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "RE"

    const-string v2, "Reunion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "RO"

    const-string v2, "Romania"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "RS"

    const-string v2, "Serbia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "RU"

    const-string v2, "Russian Federation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "RW"

    const-string v2, "Rwanda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SA"

    const-string v2, "Saudi Arabia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SB"

    const-string v2, "Solomon Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SC"

    const-string v2, "Seychelles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SD"

    const-string v2, "Sudan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SE"

    const-string v2, "Sweden"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SG"

    const-string v2, "Singapore"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SH"

    const-string v2, "Saint Helena"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SI"

    const-string v2, "Slovenia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SJ"

    const-string v2, "Svalbard and Jan Mayen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SK"

    const-string v2, "Slovakia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SL"

    const-string v2, "Sierra Leone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SM"

    const-string v2, "San Marino"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SN"

    const-string v2, "Senegal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SO"

    const-string v2, "Somalia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SR"

    const-string v2, "Suriname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SS"

    const-string v2, "South Sudan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ST"

    const-string v2, "Sao Tome and Principe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SV"

    const-string v2, "El Salvador"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SX"

    const-string v2, "Sint Maarten"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SY"

    const-string v2, "Syrian Arab Republic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "SZ"

    const-string v2, "Swaziland"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TC"

    const-string v2, "Turks and Caicos Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TD"

    const-string v2, "Chad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TF"

    const-string v2, "French Southern Territories"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TG"

    const-string v2, "Togo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TH"

    const-string v2, "Thailand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TJ"

    const-string v2, "Tajikistan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TK"

    const-string v2, "Tokelau"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TL"

    const-string v2, "Timor-Leste"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TM"

    const-string v2, "Turkmenistan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TN"

    const-string v2, "Tunisia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TO"

    const-string v2, "Tonga"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TR"

    const-string v2, "Turkey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TT"

    const-string v2, "Trinidad and Tobago"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TV"

    const-string v2, "Tuvalu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TW"

    const-string v2, "Taiwan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "TZ"

    const-string v2, "Tanzania, United Republic of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "UA"

    const-string v2, "Ukraine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "UG"

    const-string v2, "Uganda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "UM"

    const-string v2, "United States Minor Outlying Islands"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "US"

    const-string v2, "United States"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "UY"

    const-string v2, "Uruguay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "UZ"

    const-string v2, "Uzbekistan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VA"

    const-string v2, "Holy See (Vatican City State)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VC"

    const-string v2, "Saint Vincent and the Grenadines"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VE"

    const-string v2, "Venezuela"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VG"

    const-string v2, "Virgin Islands, British"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VI"

    const-string v2, "Virgin Islands, U.S."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VN"

    const-string v2, "Vietnam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "VU"

    const-string v2, "Vanuatu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "WF"

    const-string v2, "Wallis and Futuna"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "WS"

    const-string v2, "Samoa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "YE"

    const-string v2, "Yemen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "YT"

    const-string v2, "Mayotte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ZA"

    const-string v2, "South Africa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ZM"

    const-string v2, "Zambia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    const-string v1, "ZW"

    const-string v2, "Zimbabwe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/pushwoosh/inapp/c/a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "City"

    const-string v1, "Country"

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pushwoosh/inapp/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pushwoosh/inapp/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed converting geoTags"

    invoke-static {v0, p0}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    aget-char v0, p0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-char v0, p0, v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    aput-char v0, p0, v1

    :cond_0
    aget-char v0, p0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "$.00"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "$0"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u20ac0"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u20ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u00a50"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u00a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u20a40"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u20a4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pushwoosh/inapp/c/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM-dd-yy"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yy"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd yy"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd yyyy"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yy hh:mm"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT-0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
