.class public abstract Lcom/airbnb/android/adapters/HHBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "HHBaseAdapter.java"


# instance fields
.field private mNumListings:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 26
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/HHBaseAdapter;->mNumListings:I

    .line 28
    :cond_1b
    return-void
.end method

.method public static getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    const v6, 0x7f0e0496

    const/4 v9, 0x1

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 44
    .local v4, "startCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 45
    .local v2, "endCalendar":Ljava/util/Calendar;
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 46
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 50
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_53

    const v1, 0x7f0e013d

    .line 51
    .local v1, "dateFormatRes":I
    :goto_27
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "startString":Ljava/lang/String;
    if-eq v1, v6, :cond_3f

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3f
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "endString":Ljava/lang/String;
    const v6, 0x7f0e02b7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "dateFormatRes":I
    .end local v3    # "endString":Ljava/lang/String;
    .end local v5    # "startString":Ljava/lang/String;
    :cond_53
    move v1, v6

    .line 50
    goto :goto_27
.end method


# virtual methods
.method public getNumListings()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/airbnb/android/adapters/HHBaseAdapter;->mNumListings:I

    return v0
.end method

.method protected setupEmptyState(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "isAlerts"    # Z

    .prologue
    .line 35
    const v2, 0x7f0802ab

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz p3, :cond_2a

    const v2, 0x7f0e0297

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    const v2, 0x7f080358

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .line 39
    .local v0, "image":Lcom/airbnb/android/views/HaloImageView;
    if-eqz p3, :cond_2e

    const v2, 0x7f0200dc

    :goto_1f
    const v3, 0x7f0a002b

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/HaloImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 36
    .end local v0    # "image":Lcom/airbnb/android/views/HaloImageView;
    :cond_2a
    const v2, 0x7f0e0299

    goto :goto_e

    .line 39
    .restart local v0    # "image":Lcom/airbnb/android/views/HaloImageView;
    :cond_2e
    const v2, 0x7f0200dd

    goto :goto_1f
.end method
