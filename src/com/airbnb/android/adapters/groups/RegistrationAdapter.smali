.class public Lcom/airbnb/android/adapters/groups/RegistrationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RegistrationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/groups/Registration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "registrations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Registration;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/groups/RegistrationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/groups/Registration;

    .line 25
    .local v6, "registration":Lcom/airbnb/android/models/groups/Registration;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_18

    .line 28
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03013e

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    :cond_18
    const v8, 0x7f080363

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 32
    .local v5, "memberNameTextView":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "memberName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v8, 0x7f080365

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 36
    .local v3, "memberAboutTextView":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "memberAbout":Ljava/lang/String;
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_68

    .line 38
    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_53
    const v8, 0x7f080362

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 45
    .local v0, "avatar":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->getPictureUrlForThumbnail()Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 48
    return-object p2

    .line 41
    .end local v0    # "avatar":Lcom/airbnb/android/views/AirImageView;
    .end local v7    # "url":Ljava/lang/String;
    :cond_68
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_53
.end method
