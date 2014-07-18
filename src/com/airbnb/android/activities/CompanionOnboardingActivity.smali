.class public Lcom/airbnb/android/activities/CompanionOnboardingActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "CompanionOnboardingActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/CompanionOnboardingActivity$2;,
        Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;
    }
.end annotation


# static fields
.field private static final ARG_MARKET:Ljava/lang/String; = "market"

.field private static final ARG_PREFERENCE_COUNTS:Ljava/lang/String; = "preference_counts"

.field private static final ARG_PREFERENCE_KEYS:Ljava/lang/String; = "preference_keys"

.field private static final ARG_PREFERENCE_VALUES:Ljava/lang/String; = "preferences_values"

.field private static final ARG_STEP_NUMBER:Ljava/lang/String; = "step_number"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"


# instance fields
.field private mMarket:Ljava/lang/String;

.field private mOnboardingRequest:Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

.field private mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

.field private mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/CompanionOnboardingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->completeOnboarding()V

    return-void
.end method

.method private completeOnboarding()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markCompanionOnboardingAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->intentForMarket(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->finish()V

    .line 233
    return-void
.end method

.method public static intentForMarket(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "market"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method private reconstructSelectedPreferencesMap(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-direct {v4}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;-><init>()V

    .line 206
    .local v4, "preferences":Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3f

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v3, "keyValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_22
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v1, v5, :cond_39

    .line 211
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 214
    :cond_39
    invoke-virtual {v4, v2, v3}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->addPreference(Ljava/lang/String;Ljava/util/List;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 217
    .end local v1    # "j":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    return-object v4
.end method

.method private showCurrentStep()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 155
    sget-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$2;->$SwitchMap$com$airbnb$android$activities$CompanionOnboardingActivity$OnboardingStep:[I

    iget-object v1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown onboarding state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_2a
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 171
    :goto_31
    return-void

    .line 160
    :pswitch_32
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_31

    .line 163
    :pswitch_3a
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_31

    .line 166
    :pswitch_42
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_31

    .line 155
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_32
        :pswitch_3a
        :pswitch_42
    .end packed-switch
.end method

.method private uploadPreferences()V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-virtual {v0}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getQuestions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showLoader(Z)V

    .line 177
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    iget-object v1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    new-instance v2, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;-><init>(Lcom/airbnb/android/activities/CompanionOnboardingActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;-><init>(Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingRequest:Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingRequest:Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;->execute()V

    .line 201
    :goto_23
    return-void

    .line 199
    :cond_24
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->completeOnboarding()V

    goto :goto_23
.end method


# virtual methods
.method public getMarket()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    return-object v0
.end method

.method protected getWindowFeatures()[I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x9
        0xa
    .end array-data
.end method

.method public onAddedPreferences(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->addPreference(Ljava/lang/String;Ljava/util/List;)V

    .line 225
    :cond_f
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showNextStep()V

    .line 226
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->ordinal()I

    move-result v0

    if-lez v0, :cond_1b

    .line 124
    invoke-static {}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->values()[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 126
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->setupTransparentActionBar()V

    .line 61
    if-nez p1, :cond_24

    .line 62
    sget-object v3, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->START:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "market"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    .line 64
    new-instance v3, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-direct {v3}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    .line 66
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showCurrentStep()V

    .line 76
    :goto_23
    return-void

    .line 68
    :cond_24
    invoke-static {}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->values()[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    move-result-object v3

    const-string/jumbo v4, "step_number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 69
    const-string/jumbo v3, "market"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    .line 71
    const-string/jumbo v3, "preference_keys"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "preference_counts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "preferences_values"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v0, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->reconstructSelectedPreferencesMap(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    goto :goto_23
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 115
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 107
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 108
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->finish()V

    .line 109
    const/4 v0, 0x1

    goto :goto_b

    .line 111
    :cond_1b
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->onBackPressed()V

    .line 112
    const/4 v0, 0x0

    goto :goto_b

    .line 105
    :pswitch_data_20
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onPause()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showLoader(Z)V

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingRequest:Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    if-eqz v0, :cond_10

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingRequest:Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;->cancelIfRunning()V

    .line 137
    :cond_10
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string/jumbo v5, "step_number"

    iget-object v6, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->ordinal()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v5, "market"

    iget-object v6, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mMarket:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, "preferenceKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "preferenceCountsPerKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "flattenedPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-virtual {v5}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getQuestions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "question":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-virtual {v5, v4}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getAnswersForQuestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v5, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mSelectedPreferences:Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    invoke-virtual {v5, v4}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getAnswersForQuestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    .line 99
    .end local v4    # "question":Ljava/lang/String;
    :cond_5a
    const-string/jumbo v5, "preference_keys"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    const-string/jumbo v5, "preference_counts"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    const-string/jumbo v5, "preferences_values"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    return-void
.end method

.method public showNextStep()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    sget-object v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->MARKET_FAMILIARITY:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    if-ne v0, v1, :cond_e

    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->setResult(I)V

    .line 147
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->uploadPreferences()V

    .line 152
    :goto_d
    return-void

    .line 149
    :cond_e
    invoke-static {}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->values()[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->mOnboardingStep:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 150
    invoke-direct {p0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showCurrentStep()V

    goto :goto_d
.end method
