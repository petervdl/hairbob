.class public Lcom/airbnb/android/utils/UserProfileUtils;
.super Ljava/lang/Object;
.source "UserProfileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/UserProfileUtils$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static getValue(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)Ljava/lang/String;
    .registers 14
    .param p0, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 21
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 22
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    sget-object v10, Lcom/airbnb/android/utils/UserProfileUtils$1;->$SwitchMap$com$airbnb$android$interfaces$EditProfileInterface$ProfileSection:[I

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_d4

    .line 61
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported profile section type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 24
    :pswitch_30
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v8

    .line 59
    :cond_34
    :goto_34
    return-object v8

    .line 26
    :pswitch_35
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 28
    :pswitch_3a
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getGender()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->findGender(Ljava/lang/String;)Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v3

    .line 29
    .local v3, "gender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    if-eqz v3, :cond_34

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v8

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 31
    .end local v3    # "gender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    :pswitch_51
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v0

    .line 32
    .local v0, "birthDate":Ljava/util/Date;
    const/4 v9, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 33
    .local v2, "format":Ljava/text/DateFormat;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 35
    .end local v0    # "birthDate":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/DateFormat;
    :pswitch_6d
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 37
    :pswitch_72
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getPhoneNumbers()Ljava/util/List;

    move-result-object v7

    .line 38
    .local v7, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ProfilePhoneNumber;>;"
    if-eqz v7, :cond_34

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_34

    .line 39
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 41
    .local v6, "numPhoneNumbers":I
    if-ne v6, v4, :cond_8f

    .line 42
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/models/ProfilePhoneNumber;

    invoke-virtual {v8}, Lcom/airbnb/android/models/ProfilePhoneNumber;->getNumberFormatted()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 44
    :cond_8f
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0d003e

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v8, v10, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 49
    .end local v6    # "numPhoneNumbers":I
    .end local v7    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ProfilePhoneNumber;>;"
    :pswitch_a7
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 51
    :pswitch_ac
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getSchool()Ljava/lang/String;

    move-result-object v8

    goto :goto_34

    .line 53
    :pswitch_b1
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getWork()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_34

    .line 55
    :pswitch_b7
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getTimezone()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_34

    .line 57
    :pswitch_bd
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getLanguages()Ljava/util/List;

    move-result-object v5

    .line 58
    .local v5, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_d1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d1

    .line 59
    .local v4, "hasLanguages":Z
    :goto_c9
    if-eqz v4, :cond_34

    invoke-static {v5}, Lcom/airbnb/android/utils/TextHelper;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_34

    .end local v4    # "hasLanguages":Z
    :cond_d1
    move v4, v9

    .line 58
    goto :goto_c9

    .line 22
    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_51
        :pswitch_6d
        :pswitch_72
        :pswitch_a7
        :pswitch_ac
        :pswitch_b1
        :pswitch_b7
        :pswitch_bd
    .end packed-switch
.end method

.method public static updateCurrentUser(Lcom/airbnb/android/requests/EditProfileRequest;)Z
    .registers 5
    .param p0, "response"    # Lcom/airbnb/android/requests/EditProfileRequest;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "updated":Z
    iget-object v2, p0, Lcom/airbnb/android/requests/EditProfileRequest;->user:Lcom/airbnb/android/models/User;

    .line 68
    .local v2, "updatedUser":Lcom/airbnb/android/models/User;
    if-eqz v2, :cond_54

    .line 69
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 70
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setAbout(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setFirstName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setLastName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setGender(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setBirthdate(Ljava/util/Date;)V

    .line 75
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setEmailAddress(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getSchool()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setSchool(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getWork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setWork(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setLocation(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getLanguages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/User;->setLanguages(Ljava/util/List;)V

    .line 80
    const/4 v1, 0x1

    .line 82
    .end local v0    # "currUser":Lcom/airbnb/android/models/User;
    :cond_54
    return v1
.end method
