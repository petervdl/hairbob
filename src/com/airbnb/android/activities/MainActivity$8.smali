.class Lcom/airbnb/android/activities/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yozio/android/interfaces/GetMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->doTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;

.field final synthetic val$ccaIntent:Landroid/content/Intent;

.field final synthetic val$instantReferral:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;ZLandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 926
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$8;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iput-boolean p2, p0, Lcom/airbnb/android/activities/MainActivity$8;->val$instantReferral:Z

    iput-object p3, p0, Lcom/airbnb/android/activities/MainActivity$8;->val$ccaIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMetaData(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "metaData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x1

    .line 930
    const-string/jumbo v6, "lys"

    const-string/jumbo v7, "launch-state"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 931
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const-string/jumbo v7, "general_nav"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, "spaces"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "lys_yozio_source"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 932
    iget-object v6, p0, Lcom/airbnb/android/activities/MainActivity$8;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iget-object v7, p0, Lcom/airbnb/android/activities/MainActivity$8;->this$0:Lcom/airbnb/android/activities/MainActivity;

    sget-object v8, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {v7, v8}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 937
    :cond_3c
    :goto_3c
    const-string/jumbo v6, "af"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_88

    const-string/jumbo v6, "af"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 938
    const-string/jumbo v6, "af"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "affiliate":Ljava/lang/String;
    const-string/jumbo v6, "c"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "code":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "affiliate"

    invoke-virtual {v6, v7, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "code"

    invoke-virtual {v6, v7, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    .line 942
    .local v5, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v6, "affiliate_install"

    invoke-static {v6, v9, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 944
    .end local v0    # "affiliate":Ljava/lang/String;
    .end local v2    # "code":Ljava/lang/String;
    .end local v5    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_88
    const-string/jumbo v6, "s"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d1

    const-string/jumbo v6, "s"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d1

    .line 948
    const-string/jumbo v6, "s"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "channel":Ljava/lang/String;
    const-string/jumbo v6, "i"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "copyVersion":Ljava/lang/String;
    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "s"

    invoke-virtual {v6, v7, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "i"

    invoke-virtual {v6, v7, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    .line 951
    .restart local v5    # "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v6, "tracked_install"

    invoke-static {v6, v9, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 953
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "copyVersion":Ljava/lang/String;
    .end local v5    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_d1
    const-string/jumbo v6, "yozio_referral_code"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10c

    const-string/jumbo v6, "yozio_referral_code"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10c

    .line 955
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "referrals_code"

    const-string/jumbo v8, "yozio_referral_code"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 958
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 960
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10c
    return-void

    .line 933
    :cond_10d
    const-string/jumbo v6, "referral"

    const-string/jumbo v7, "launch-state"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    iget-boolean v6, p0, Lcom/airbnb/android/activities/MainActivity$8;->val$instantReferral:Z

    if-nez v6, :cond_3c

    .line 934
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackReferredUserLanding()V

    .line 935
    iget-object v6, p0, Lcom/airbnb/android/activities/MainActivity$8;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iget-object v7, p0, Lcom/airbnb/android/activities/MainActivity$8;->val$ccaIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3c
.end method
