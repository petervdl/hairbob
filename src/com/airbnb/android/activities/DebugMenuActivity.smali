.class public Lcom/airbnb/android/activities/DebugMenuActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DebugMenuActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final DIALOG_SWITCH_ACCOUNT:Ljava/lang/String; = "switch_account"

.field private static final DIALOG_SWITCH_ENDPOINT:Ljava/lang/String; = "switch_endpoint"


# instance fields
.field private mAirbnbApi:Lcom/airbnb/android/AirbnbApi;

.field mChinaCell:Lcom/airbnb/android/views/GroupedCheck;

.field private mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

.field mNoGmsCell:Lcom/airbnb/android/views/GroupedCheck;

.field mOverrideTrebuchetLayout:Landroid/view/View;

.field mResetCompanionOnboarding:Lcom/airbnb/android/views/GroupedCell;

.field mShakeFeedbackCell:Lcom/airbnb/android/views/GroupedCheck;

.field mSwitchAccountLayout:Landroid/view/View;

.field private mSwitchAccountSubtitle:Landroid/widget/TextView;

.field mSwitchServerLayout:Landroid/view/View;

.field private mSwitchServerSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/utils/DebugSettings;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/AirbnbApi;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/DebugMenuActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/DebugMenuActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/DebugMenuActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/DebugMenuActivity;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private setEndpoint(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/AirbnbApi;->setEndpointUrl(Ljava/lang/String;)V

    .line 280
    const v0, 0x7f0e0154

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateServerEndpoint()V

    .line 283
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V

    .line 284
    return-void
.end method

.method private setupActionBar()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 299
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 300
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 301
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 302
    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/DebugMenuActivity;->setProgressBarIndeterminate(Z)V

    .line 304
    return-void
.end method

.method private updateServerEndpoint()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getEndpointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method private updateSwitchAccount()V
    .registers 6

    .prologue
    .line 287
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 288
    .local v0, "user":Lcom/airbnb/android/models/User;
    iget-object v2, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountSubtitle:Landroid/widget/TextView;

    if-nez v0, :cond_17

    const v1, 0x7f0e015a

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void

    .line 288
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method public loginStatusChanged(Lcom/airbnb/android/events/LoginStatusEvent;)V
    .registers 2
    .param p1, "lse"    # Lcom/airbnb/android/events/LoginStatusEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const v6, 0x7f08040a

    const v5, 0x7f080215

    const v4, 0x7f0800b7

    const/16 v3, 0x8

    const-string/jumbo v0, "DebugMenuActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_11
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "DebugMenuActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_1a} :catch_109

    .line 72
    :goto_1a
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->setupActionBar()V

    .line 80
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;

    .line 81
    invoke-static {p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mShakeFeedbackCell:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$1;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mShakeFeedbackCell:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mChinaCell:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$2;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mChinaCell:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/DebugSettings;->simulateInChinaEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mNoGmsCell:Lcom/airbnb/android/views/GroupedCheck;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$3;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mNoGmsCell:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/DebugSettings;->simulateNoPlayServicesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    invoke-static {v0, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e015f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    invoke-static {v0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountSubtitle:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    invoke-static {v0, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$4;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    invoke-static {v0, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    invoke-static {v0, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    invoke-static {v0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerSubtitle:Landroid/widget/TextView;

    .line 199
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateServerEndpoint()V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$5;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    invoke-static {v0, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e015b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    invoke-static {v0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    invoke-static {v0, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$6;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mResetCompanionOnboarding:Lcom/airbnb/android/views/GroupedCell;

    new-instance v1, Lcom/airbnb/android/activities/DebugMenuActivity$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/DebugMenuActivity$7;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_109
    move-exception v0

    const/4 v0, 0x0

    :try_start_10b
    const-string/jumbo v1, "DebugMenuActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_112
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_112} :catch_109

    goto/16 :goto_1a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->finish()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 275
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/airbnb/android/activities/DebugMenuActivity;->updateSwitchAccount()V

    .line 262
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
