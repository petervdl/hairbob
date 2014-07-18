.class public Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "HostHomeWidgetProvider.java"


# static fields
.field private static final EXTRA_REFRESH:Ljava/lang/String; = "refresh"

.field public static final EXTRA_WIDGET_MESSAGES:Ljava/lang/String; = "widget_messages"


# instance fields
.field private mMinHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->mMinHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    .registers 5
    .param p0, "x0"    # Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I
    .param p4, "x4"    # [I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    .registers 5
    .param p0, "x0"    # Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .registers 5
    .param p0, "x0"    # Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupUpcomingRow(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    return-void
.end method

.method private setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "notifCount"    # I
    .param p4, "appWidgetIds"    # [I

    .prologue
    const v10, 0x7f08051a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 124
    if-lez p3, :cond_54

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0038

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, p3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 130
    :goto_1d
    invoke-static {p1}, Lcom/airbnb/android/activities/MainActivity;->intentForHostHome(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "hostHomeIntent":Landroid/content/Intent;
    const-string/jumbo v4, "widget_messages"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {p1, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "refreshIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v4, "appWidgetIds"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 139
    const-string/jumbo v4, "refresh"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const/high16 v4, 0x8000000

    invoke-static {p1, v8, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 143
    .local v3, "refreshPending":Landroid/app/PendingIntent;
    const v4, 0x7f08051b

    invoke-virtual {p2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    return-void

    .line 127
    .end local v0    # "hostHomeIntent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "refreshIntent":Landroid/content/Intent;
    .end local v3    # "refreshPending":Landroid/app/PendingIntent;
    :cond_54
    const-string/jumbo v4, ""

    invoke-virtual {p2, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method private setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "stringResId"    # I
    .param p4, "imgId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const v1, 0x7f08051e

    const/4 v4, 0x0

    .line 111
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 113
    iget v0, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->mMinHeight:I

    if-lez v0, :cond_3c

    iget v0, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->mMinHeight:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_3c

    const/4 v6, 0x1

    .line 114
    .local v6, "imageAbove":Z
    :goto_1c
    if-eqz v6, :cond_3e

    move v2, v4

    :goto_1f
    if-eqz v6, :cond_40

    move v3, p4

    :goto_22
    move-object v0, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 116
    .end local v6    # "imageAbove":Z
    :cond_27
    invoke-static {p1}, Lcom/airbnb/android/activities/MainActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 117
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p1, v4, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 119
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f08051d

    invoke-virtual {p2, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 120
    const v0, 0x7f08051c

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 121
    return-void

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3c
    move v6, v4

    .line 113
    goto :goto_1c

    .restart local v6    # "imageAbove":Z
    :cond_3e
    move v2, p4

    .line 114
    goto :goto_1f

    :cond_40
    move v3, v4

    goto :goto_22
.end method

.method private setupUpcomingRow(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "widgetId"    # I

    .prologue
    const v9, 0x7f08051c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/airbnb/android/services/HHListWidgetService;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "appWidgetId"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {v1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p2, v9, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p3, v7, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 155
    const/4 v5, 0x0

    const-string/jumbo v6, "hh_widget"

    invoke-static {p1, v5, v6}, Lcom/airbnb/android/activities/ROActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "hostHomeIntent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/airbnb/android/activities/MainActivity;->intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 157
    .local v3, "main":Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/content/Intent;

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    .line 158
    .local v2, "intents":[Landroid/content/Intent;
    const/16 v5, 0x32

    invoke-static {p1, v5, v2, v7}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 159
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v9, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "appWidgetMinHeight"

    const/4 v1, -0x1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->mMinHeight:I

    .line 106
    const v0, 0x7f08051c

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 107
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 92
    invoke-static {}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackWidgetUninstall()V

    .line 93
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackWidgetInstall()V

    .line 100
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    const-string/jumbo v0, "refresh"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    invoke-static {}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackRefreshClick()V

    .line 86
    :cond_f
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v4, 0x7f0301e3

    const/4 v3, 0x0

    .line 36
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 37
    new-instance v0, Lcom/airbnb/android/requests/HostHomeRequest;

    new-instance v2, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;-><init>(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;)V

    invoke-direct {v0, v2}, Lcom/airbnb/android/requests/HostHomeRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 64
    .local v0, "request":Lcom/airbnb/android/requests/HostHomeRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/HostHomeRequest;->execute()V

    .line 65
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1, v3, p3}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V

    .line 67
    const v2, 0x7f0e03fe

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 68
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 76
    .end local v0    # "request":Lcom/airbnb/android/requests/HostHomeRequest;
    :goto_37
    const v2, 0x7f08051c

    invoke-virtual {p2, p3, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 77
    return-void

    .line 70
    .end local v1    # "views":Landroid/widget/RemoteViews;
    :cond_3e
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 71
    .restart local v1    # "views":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1, v3, p3}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V

    .line 72
    const v2, 0x7f0e02ba

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 73
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_37
.end method
