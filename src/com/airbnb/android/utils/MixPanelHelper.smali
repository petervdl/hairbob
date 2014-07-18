.class public Lcom/airbnb/android/utils/MixPanelHelper;
.super Ljava/lang/Object;
.source "MixPanelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/MixPanelHelper$MixNames;
    }
.end annotation


# static fields
.field public static final AIRBNB_MIXPANEL_API_TOKEN:Ljava/lang/String; = "6b70977603f761bd58debd45d23e2744"

.field public static final PARAM_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final PARAM_IMPRESSIONS:Ljava/lang/String; = "impressions"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd/mm/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 29
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :goto_c
    return-object v2

    .line 28
    :catch_d
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_c
.end method
