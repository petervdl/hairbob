.class public Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;
.super Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;
.source "YourTripSectionsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$1;,
        Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 79
    # getter for: Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    invoke-static {}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->access$000()[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 50
    invoke-static {p1}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->getSection(I)Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    move-result-object v2

    .line 53
    .local v2, "section":Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    sget-object v3, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$1;->$SwitchMap$com$airbnb$android$adapters$YourTripSectionsPagerAdapter$UpcomingTripsSection:[I

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4a

    .line 67
    new-instance v1, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;-><init>()V

    .line 68
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "section_number"

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-object v1

    .line 55
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_25
    sget-object v3, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Upcoming:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 56
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 57
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/airbnb/android/fragments/TripsListFragment;->newInstance(Z)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_24

    .line 61
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_37
    sget-object v3, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Previous:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 62
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_24

    .line 63
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/airbnb/android/fragments/TripsListFragment;->newInstance(Z)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_24

    .line 53
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_37
    .end packed-switch
.end method

.method public getPageIcon(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 85
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {p1}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->getSection(I)Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageTitleInt(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 89
    invoke-static {p1}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->getSection(I)Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    move-result-object v0

    # getter for: Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->mNameId:I
    invoke-static {v0}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->access$100(Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;)I

    move-result v0

    return v0
.end method
