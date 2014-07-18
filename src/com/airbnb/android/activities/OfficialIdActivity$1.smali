.class Lcom/airbnb/android/activities/OfficialIdActivity$1;
.super Ljava/lang/Object;
.source "OfficialIdActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/OfficialIdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/OfficialIdActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/OfficialIdActivity;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 195
    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;

    .prologue
    .line 179
    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$002(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 180
    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p1, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;->countries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    # setter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;
    invoke-static {v3, v4}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$102(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 181
    iget-object v3, p1, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;->countries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;

    .line 182
    .local v0, "country":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;
    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$000(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mTypesForSupportedCountries:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$100(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;->code:Ljava/lang/String;

    iget-object v5, v0, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;->identifications:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 186
    .end local v0    # "country":Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;
    :cond_45
    iget-object v3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;

    .line 188
    .local v1, "fragment":Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdCountryFragment;->enableInteraction(Z)V

    .line 190
    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Supported Countries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/activities/OfficialIdActivity$1;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mSupportedCountries:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$000(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/OfficialIdActivity$1;->onResponse(Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;)V

    return-void
.end method
