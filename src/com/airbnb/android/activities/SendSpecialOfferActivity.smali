.class public Lcom/airbnb/android/activities/SendSpecialOfferActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "SendSpecialOfferActivity.java"


# static fields
.field public static final ARG_CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field public static final ARG_CHECKOUT_DATE:Ljava/lang/String; = "checkout_date"

.field private static final ARG_GUEST:Ljava/lang/String; = "guest"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_THREAD_ID:Ljava/lang/String; = "thread_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForArbitrarySpecialOffer(Landroid/content/Context;JLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/User;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p4, "guest"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SendSpecialOfferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "guest"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method public static intentForMessageThread(Landroid/content/Context;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Lcom/airbnb/android/models/MessageThread;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-static {p0, v5, v6, p2, v7}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->intentForArbitrarySpecialOffer(Landroid/content/Context;JLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/User;)Landroid/content/Intent;

    move-result-object v3

    .line 28
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/DateHelper;->getDateAsCalendar(J)Ljava/util/Calendar;

    move-result-object v0

    .line 29
    .local v0, "c":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 30
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 31
    .local v4, "tomorrow":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getRequestedCheckinDate()Ljava/util/Date;

    move-result-object v1

    .line 32
    .local v1, "checkin":Ljava/util/Date;
    if-eqz v1, :cond_39

    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 33
    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getRequestedCheckoutDate()Ljava/util/Date;

    move-result-object v2

    .line 34
    .local v2, "checkout":Ljava/util/Date;
    const-string/jumbo v5, "checkin_date"

    invoke-static {v3, v5, v1}, Lcom/airbnb/android/utils/MiscUtils;->putDateInIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Date;)V

    .line 35
    const-string/jumbo v5, "checkout_date"

    invoke-static {v3, v5, v2}, Lcom/airbnb/android/utils/MiscUtils;->putDateInIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Date;)V

    .line 38
    .end local v2    # "checkout":Ljava/util/Date;
    :cond_39
    return-object v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v9, 0x7f0e071b

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 56
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "thread_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    .local v0, "threadId":J
    const-string/jumbo v9, "listing"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 58
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v9, "guest"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/User;

    .line 59
    .local v3, "guestUser":Lcom/airbnb/android/models/User;
    const-string/jumbo v9, "checkin_date"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 60
    .local v4, "checkInDate":J
    const-string/jumbo v9, "checkout_date"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 62
    .local v6, "checkoutDate":J
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->getContentId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_53

    .line 63
    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->newInstance(JLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/User;JJ)Landroid/support/v4/app/Fragment;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/activities/SendSpecialOfferActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 65
    :cond_53
    return-void
.end method
