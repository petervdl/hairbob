.class Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendReferralsToServerRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;>;"
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    .line 692
    const-string/jumbo v0, "referrals/create_multiple"

    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 693
    invoke-virtual {p0, p3}, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;->wrapReferralObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;->setJsonPost(Ljava/lang/String;)V

    .line 694
    return-void

    .line 693
    :cond_24
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;Lcom/airbnb/android/fragments/ContactsFragment$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/airbnb/android/fragments/ContactsFragment;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/json/JSONArray;
    .param p4, "x3"    # Lcom/airbnb/android/requests/RequestListener;
    .param p5, "x4"    # Lcom/airbnb/android/fragments/ContactsFragment$1;

    .prologue
    .line 684
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;-><init>(Lcom/airbnb/android/fragments/ContactsFragment;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;)V

    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public wrapReferralObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "jObj"    # Lorg/json/JSONArray;

    .prologue
    .line 697
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 699
    .local v1, "lobj":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "contacts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_c

    .line 703
    :goto_b
    return-object v1

    .line 700
    :catch_c
    move-exception v0

    .line 701
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method
