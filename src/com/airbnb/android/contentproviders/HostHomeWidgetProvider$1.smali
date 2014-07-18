.class Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;
.super Ljava/lang/Object;
.source "HostHomeWidgetProvider.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
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
        "Lcom/airbnb/android/requests/HostHomeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;)V
    .registers 5

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iput-object p2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetIds:[I

    iput-object p4, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 41
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0301e3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "views":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetIds:[I

    # invokes: Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->access$000(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V

    .line 43
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0e02b8

    const v4, 0x7f020176

    # invokes: Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->access$100(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 44
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 45
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetIds:[I

    const v3, 0x7f08051c

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 46
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/HostHomeRequest;

    .prologue
    const v2, 0x7f0301e3

    const/4 v4, 0x0

    .line 50
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 51
    .local v0, "views":Landroid/widget/RemoteViews;
    iget-object v1, p1, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_48

    .line 52
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    # invokes: Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupUpcomingRow(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->access$200(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    .line 57
    :goto_20
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v3, p1, Lcom/airbnb/android/requests/HostHomeRequest;->alerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetIds:[I

    # invokes: Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->access$000(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V

    .line 58
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetIds:[I

    const v3, 0x7f08051c

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 59
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 60
    return-void

    .line 54
    :cond_48
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 55
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->this$0:Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;

    iget-object v2, p0, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0e02b9

    # invokes: Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->setupTextView(Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;->access$100(Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    goto :goto_20
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/airbnb/android/requests/HostHomeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/contentproviders/HostHomeWidgetProvider$1;->onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V

    return-void
.end method
