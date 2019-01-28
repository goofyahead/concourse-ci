--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2.pgdg90+1)
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: clip_publish_state; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.clip_publish_state AS ENUM (
    'Published',
    'Unpublished',
    'Publishing'
);


--
-- Name: deeplink_destination_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.deeplink_destination_type AS ENUM (
    'station',
    'page',
    'podcast',
    'show',
    'podcast_category',
    'location',
    'genre',
    'playlist',
    'webview',
    'homepage',
    'sign-in'
);


--
-- Name: enum_alexa_stream_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_alexa_stream_type AS ENUM (
    'aac_m3u',
    'mp3_m3u'
);


--
-- Name: enum_clip_publish_state; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_clip_publish_state AS ENUM (
    'Published',
    'Unpublished',
    'Publishing'
);


--
-- Name: enum_page_module_category_destination_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_page_module_category_destination_type AS ENUM (
    'station',
    'page',
    'podcast',
    'show',
    'podcast_category',
    'location',
    'genre',
    'playlist',
    'webview',
    'homepage',
    'sign-in'
);


--
-- Name: enum_page_module_destination_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_page_module_destination_type AS ENUM (
    'station',
    'page',
    'podcast',
    'show',
    'podcast_category',
    'location',
    'genre',
    'playlist',
    'webview',
    'homepage',
    'sign-in'
);


--
-- Name: enum_page_module_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_page_module_type AS ENUM (
    'local_station_carousel',
    'local_podcast_carousel',
    'favorite_stations',
    'recent_station_carousel',
    'station_carousel',
    'podcast_carousel',
    'station_list',
    'category_1x3',
    'category_3x3',
    'feature_page',
    'audio_clip_list',
    'audio_playlist'
);


--
-- Name: enum_show_module_module_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_show_module_module_type AS ENUM (
    'playlist',
    'podcasts',
    'schedule',
    'recently_played',
    'custom',
    'custom_thumb',
    'custom_sub',
    'custom_thumb_sub',
    'iframe',
    'rss'
);


--
-- Name: enum_station_bband; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_station_bband AS ENUM (
    'FM',
    'AM',
    'HD'
);


--
-- Name: enum_station_category; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_station_category AS ENUM (
    'Music',
    'News',
    'Talk',
    'Sports'
);


--
-- Name: enum_station_module_module_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_station_module_module_type AS ENUM (
    'playlist',
    'podcasts',
    'schedule',
    'recently_played',
    'custom',
    'custom_thumb',
    'custom_sub',
    'custom_thumb_sub',
    'iframe',
    'rss'
);


--
-- Name: enum_station_mount_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_station_mount_type AS ENUM (
    'mp3',
    'mp3_dialup',
    'aac',
    'aac_dialup',
    'hls_adp'
);


--
-- Name: enum_station_stream_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_station_stream_type AS ENUM (
    'mp3_pls',
    'mp3_shoutcast',
    'aac_pls',
    'aac_shoutcast',
    'hls',
    'aac_flv',
    'mp3_flv'
);


--
-- Name: module_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.module_type AS ENUM (
    'playlist',
    'podcasts',
    'schedule',
    'recently_played',
    'custom',
    'custom_thumb',
    'custom_sub',
    'custom_thumb_sub',
    'iframe',
    'rss'
);


--
-- Name: mount_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.mount_type AS ENUM (
    'mp3',
    'mp3_dialup',
    'aac',
    'aac_dialup',
    'hls_adp'
);


--
-- Name: nielsen_station_type_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.nielsen_station_type_type AS ENUM (
    'One',
    'Two',
    'NA'
);


--
-- Name: page_module_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.page_module_type AS ENUM (
    'local_station_carousel',
    'local_podcast_carousel',
    'favorite_stations',
    'recent_station_carousel',
    'station_carousel',
    'podcast_carousel',
    'station_list',
    'category_1x3',
    'category_3x3',
    'feature_page',
    'audio_clip_list',
    'audio_playlist',
    'featured_carousel'
);


--
-- Name: station_bband_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.station_bband_type AS ENUM (
    'FM',
    'AM',
    'HD'
);


--
-- Name: station_category_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.station_category_type AS ENUM (
    'Music',
    'News',
    'Talk',
    'Sports'
);


--
-- Name: stream_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.stream_type AS ENUM (
    'mp3_pls',
    'mp3_shoutcast',
    'aac_pls',
    'aac_shoutcast',
    'hls',
    'aac_flv',
    'mp3_flv'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: page_module; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module (
    id integer NOT NULL,
    type public.page_module_type NOT NULL,
    name text NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    page_id integer,
    sort_order integer DEFAULT 0,
    destination_id text,
    destination_type public.deeplink_destination_type,
    icon_url text
);


--
-- Name: page_module_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_category (
    id integer DEFAULT nextval('public.page_module_category_id_seq'::regclass) NOT NULL,
    title text NOT NULL,
    image text NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    page_module_id integer,
    destination_id text,
    destination_type public.deeplink_destination_type
);


--
-- Name: page_module_category_list(public.page_module); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_category_list(page_module public.page_module) RETURNS SETOF public.page_module_category
    LANGUAGE sql STABLE
    AS $$
 SELECT PMC.*
 from page_module_category PMC
 JOIN page_module PM on PM.id = PMC.page_module_id AND PM.id = page_module.id
 ORDER BY PMC.sort_order ASC
$$;


--
-- Name: clip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clip (
    id integer NOT NULL,
    omny_clip_id text NOT NULL,
    title text NOT NULL,
    description text,
    image_url text,
    audio_url text,
    video_url text,
    embed_url text,
    duration_seconds text,
    publish_state public.clip_publish_state,
    published_url text,
    published_date timestamp without time zone,
    program_id text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_clip_list(public.page_module); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_clip_list(page_module public.page_module) RETURNS SETOF public.clip
    LANGUAGE sql STABLE
    AS $$
 SELECT C.*
 from page_module_clips PMC
 JOIN page_module PM on PM.id = PMC.page_module_id AND PM.id = page_module.id
 JOIN clip C on C.id = PMC.clip_id
 ORDER BY PMC.sort_order ASC
$$;


--
-- Name: page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page (
    id integer NOT NULL,
    name text NOT NULL,
    feature_image text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_page_list(public.page_module); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_page_list(page_module public.page_module) RETURNS SETOF public.page
    LANGUAGE sql STABLE
    AS $$
 SELECT P.*
 from page_module_pages PMP
 JOIN page_module PM on PM.id = PMP.page_module_id AND PM.id = page_module.id
 JOIN page P on P.id = PMP.page_id 
 ORDER BY PMP.sort_order ASC
$$;


--
-- Name: playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.playlist (
    id integer NOT NULL,
    omny_playlist_id text NOT NULL,
    title text NOT NULL,
    description text,
    hero_image text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    image text
);


--
-- Name: page_module_playlist(public.page_module); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_playlist(page_module public.page_module) RETURNS SETOF public.playlist
    LANGUAGE sql STABLE
    AS $$
 SELECT P.*
 from page_module_playlist PMP
 JOIN page_module PM on PM.id = PMP.page_module_id AND PM.id = page_module.id
 JOIN playlist P on P.id = PMP.playlist_id
 ORDER BY PMP.sort_order ASC
$$;


--
-- Name: podcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.podcast (
    id integer NOT NULL,
    title text,
    hero_image text,
    image text,
    rss_feed text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    popularity integer DEFAULT 0 NOT NULL,
    itunes_url text,
    description text,
    omny_playlist_id text
);


--
-- Name: page_module_podcast_list(public.page_module, integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_podcast_list(page_module public.page_module, markets integer[]) RETURNS SETOF public.podcast
    LANGUAGE plpgsql STABLE
    AS $$

BEGIN
 CASE page_module.type
  WHEN 'local_podcast_carousel' THEN
   RETURN QUERY SELECT * FROM recommended_podcasts_by_market_ids(markets); 
  ELSE
   RETURN QUERY SELECT P.*
   from page_module_podcasts PMP
   JOIN page_module PM on PM.id = PMP.page_module_id AND PM.id = page_module.id
   JOIN podcast P on P.id = PMP.podcast_id 
   ORDER BY PMP.sort_order ASC;
 END CASE;
 RETURN;
END;
$$;


--
-- Name: station; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station (
    id integer NOT NULL,
    r20id integer,
    name text NOT NULL,
    slogan text,
    description text,
    format text,
    website text,
    callsign text,
    slug text,
    category public.station_category_type NOT NULL,
    bband public.station_bband_type,
    frequency text,
    listen_live_url text,
    stream_type text NOT NULL,
    gaid text,
    partner text NOT NULL,
    status integer NOT NULL,
    hero_image text,
    square_logo_small text,
    square_logo_large text,
    logo_svg text,
    triton_id integer,
    triton_name text,
    city text,
    state text,
    country text,
    postal_code text,
    gmt_offset integer,
    observes_dst boolean,
    latitude real,
    longitude real,
    market_id integer,
    ando_id integer,
    doubleclick_prerolltag text,
    doubleclick_bannertag text,
    targetspot_id text,
    facebook text,
    twitter text,
    tune_in_url text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    popularity integer DEFAULT 0 NOT NULL,
    primary_color text,
    secondary_color text,
    tag_station_id integer,
    nielsen_asset_id text,
    nielsen_station_type text,
    keywords text,
    phone_number text,
    newsletter_signup text
);


--
-- Name: page_module_station_list(public.page_module, integer[], integer[], integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_module_station_list(page_module public.page_module, favorites integer[], recents integer[], markets integer[]) RETURNS SETOF public.station
    LANGUAGE plpgsql STABLE
    AS $$

DECLARE
 station_result station;
 
BEGIN
 CASE page_module.type
  WHEN 'favorite_stations' THEN
   RETURN QUERY SELECT S.* from STATION S WHERE S.id = ANY(favorites) ORDER BY array_position(favorites, s.id);
  WHEN 'local_station_carousel' THEN
   RETURN QUERY SELECT * FROM popular_stations_by_market_ids(markets); 
  WHEN 'recent_station_carousel' THEN 
   RETURN QUERY SELECT S.* from STATION S WHERE S.id = ANY(recents) ORDER BY array_position(recents, s.id);
  ELSE 
   RETURN QUERY SELECT S.*
   from page_module_stations PMS
   JOIN page_module PM on PM.id = PMS.page_module_id AND PM.id = page_module.id
   JOIN station S on S.id = PMS.station_id 
   ORDER BY PMS.sort_order ASC;
 END CASE;
 RETURN;
 
END;
$$;


--
-- Name: page_modules_by_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_modules_by_ids(ids integer[]) RETURNS SETOF public.page_module
    LANGUAGE sql STABLE
    AS $$
 select * from page_module where id = ANY(ids);
$$;


--
-- Name: page_page_modules(public.page); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.page_page_modules(page public.page) RETURNS SETOF public.page_module
    LANGUAGE sql STABLE
    AS $$
 select * from page_module where page_id = page.id order by sort_order ASC;
$$;


--
-- Name: playlist_clip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.playlist_clip (
    id integer NOT NULL,
    playlist_id integer NOT NULL,
    clip_id integer NOT NULL,
    sort_order integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: playlist_clips_by_playlist_id_sorted_by_publish_date(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.playlist_clips_by_playlist_id_sorted_by_publish_date(id integer) RETURNS SETOF public.playlist_clip
    LANGUAGE sql STABLE
    AS $_$

SELECT PC.*
    FROM playlist_clip PC
    JOIN clip C ON PC.clip_id = C.id
    WHERE 
     PC.playlist_id = $1
     AND C.publish_state = 'Published'
    ORDER BY C.published_date DESC

 $_$;


--
-- Name: playlist_get_clips_by_playlist_id_sorted_by_publish_date(public.playlist); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.playlist_get_clips_by_playlist_id_sorted_by_publish_date(playlist public.playlist) RETURNS SETOF public.playlist_clip
    LANGUAGE sql STABLE
    AS $$

SELECT * FROM playlist_clips_by_playlist_id_sorted_by_publish_date(playlist.id)
 
$$;


--
-- Name: podcast_site_url(public.podcast); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.podcast_site_url(podcast public.podcast) RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 'http://www1.play.it/audio/' || regexp_replace(regexp_replace(lower(podcast.title), '[^a-zA-Z0-9]+', ' ','g'),  ' ', '-', 'g')  || '/'
$$;


--
-- Name: popular_podcasts_by_category_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_podcasts_by_category_id(id integer) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $$

    SELECT P.*
    FROM podcast P
    JOIN podcast_category PC ON PC.podcast_id = P.id
    JOIN category C on C.id = PC.category_id
    WHERE
      C.id = popular_podcasts_by_category_id.id
    ORDER BY P.popularity DESC

$$;


--
-- Name: popular_podcasts_by_category_slug(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_podcasts_by_category_slug(slug text) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $$

    SELECT P.*
    FROM podcast P
    JOIN podcast_category PC ON PC.podcast_id = P.id
    JOIN category C ON C.id = PC.category_id
    WHERE
      LOWER(C.slug) = LOWER(popular_podcasts_by_category_slug.slug)
    ORDER BY P.popularity DESC

$$;


--
-- Name: popular_podcasts_by_market_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_podcasts_by_market_id(id integer) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $_$

    SELECT * FROM popular_podcasts_by_market_ids(ids => ARRAY[$1])

$_$;


--
-- Name: popular_podcasts_by_market_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_podcasts_by_market_ids(ids integer[]) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $_$

    SELECT P.*
    FROM podcast P
    JOIN station_podcast SP ON SP.podcast_id = P.id
    JOIN station S ON SP.station_id = S.id
    WHERE
      S.market_id = ANY( $1 )
      AND S.bband IN ('AM', 'FM')

    UNION

    SELECT P.*
    FROM podcast P
    JOIN show_podcast SP ON SP.podcast_id = P.id
    JOIN station_show SS ON SP.show_id = SS.show_id
    JOIN station S ON SS.station_id = S.id
    WHERE
      S.market_id = ANY( $1 )
      AND S.bband IN ('AM', 'FM')

    ORDER BY popularity DESC

$_$;


--
-- Name: popular_stations_by_genre_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_stations_by_genre_id(id integer) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $$

    SELECT S.*
    FROM station S
    JOIN station_genre SG ON SG.station_id = S.id
    JOIN genre G on G.id = SG.genre_id
    WHERE
      G.id = popular_stations_by_genre_id.id
      AND S.status = 1
    ORDER BY S.popularity DESC

$$;


--
-- Name: popular_stations_by_genre_slug(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_stations_by_genre_slug(slug text) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $$

    SELECT S.*
    FROM station S
    JOIN station_genre SG ON SG.station_id = S.id
    JOIN genre G ON G.id = SG.genre_id
    WHERE
      LOWER(G.slug) = LOWER(popular_stations_by_genre_slug.slug)
      AND S.status = 1
    ORDER BY S.popularity DESC

$$;


--
-- Name: popular_stations_by_market_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_stations_by_market_id(id integer) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $_$

    SELECT * FROM popular_stations_by_market_ids(ARRAY[$1])

$_$;


--
-- Name: popular_stations_by_market_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.popular_stations_by_market_ids(ids integer[]) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $_$

    SELECT S.*
    FROM station S
    WHERE
      S.market_id = ANY( $1 )
      AND S.bband IN ('AM', 'FM')
      AND S.status = 1
    ORDER BY popularity DESC

$_$;


--
-- Name: recommended_podcasts_by_market_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.recommended_podcasts_by_market_id(id integer) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $_$

    SELECT * FROM recommended_podcasts_by_market_ids(ids => ARRAY[$1])

$_$;


--
-- Name: recommended_podcasts_by_market_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.recommended_podcasts_by_market_ids(ids integer[]) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $_$

    SELECT P.*
    FROM podcast P
    JOIN featured_podcast FS ON FS.podcast_id = P.id
    WHERE
      FS.market_id = ANY($1)
      OR FS.market_id = 14

    UNION

    SELECT P.*
    FROM podcast P
    JOIN station_podcast SP ON SP.podcast_id = P.id
    JOIN station S ON SP.station_id = S.id
    WHERE
      S.market_id = ANY($1)
      AND S.bband IN ('AM', 'FM')

    UNION

    SELECT P.*
    FROM podcast P
    JOIN show_podcast SP ON SP.podcast_id = P.id
    JOIN station_show SS ON SP.show_id = SS.show_id
    JOIN station S ON SS.station_id = S.id
    WHERE
      S.market_id = ANY($1)
      AND S.bband IN ('AM', 'FM')

    ORDER BY popularity DESC

$_$;


--
-- Name: recommended_stations_by_market_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.recommended_stations_by_market_id(id integer) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $_$

    SELECT * FROM recommended_stations_by_market_ids(ids => ARRAY[$1])

$_$;


--
-- Name: recommended_stations_by_market_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.recommended_stations_by_market_ids(ids integer[]) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $_$

    SELECT S1.*
    FROM station S1
    JOIN featured_station FS ON FS.station_id = S1.id
    WHERE
      (FS.market_id = ANY($1)
      OR FS.market_id = 14)
      AND S1.status = 1

    UNION

    SELECT S2.*
    FROM station S2
    WHERE
      (S2.market_id = ANY($1)
      AND S2.bband IN ('AM', 'FM'))
      AND S2.status = 1

    ORDER BY popularity DESC

$_$;


--
-- Name: search_audio_clips(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.search_audio_clips(search text) RETURNS SETOF public.clip
    LANGUAGE sql STABLE
    AS $$
 select c.*
     from playlist_clip as pc, clip as c
     where
      pc.clip_id = c.id AND 
        (c.title ilike ('%' || search || '%') or
        c.description ilike ('%' || search || '%'))
  $$;


--
-- Name: search_podcast_episodes(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.search_podcast_episodes(search text) RETURNS SETOF public.clip
    LANGUAGE sql STABLE
    AS $$
 select c.*
     from podcast_clip as pc, clip as c
     where
      pc.clip_id = c.id AND 
        (c.title ilike ('%' || search || '%') or
        c.description ilike ('%' || search || '%'))
  $$;


--
-- Name: search_podcasts(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.search_podcasts(search text) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $$
    select p.*
    from podcast as p
    where
      p.title ilike ('%' || search || '%') or
      p.description ilike ('%' || search || '%')
    order by p.popularity DESC
  $$;


--
-- Name: search_stations(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.search_stations(search text) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $$
    select s.*
    from station as s
    where
      (s.slogan ilike ('%' || search || '%') or
      s.name ilike ('%' || search || '%') or
      s.keywords ilike ('%' || search || '%') or 
      s.callsign ilike ('%' || search || '%'))
      AND s.status = 1
    order by s.popularity DESC
  $$;


--
-- Name: sorted_podcast_clips(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.sorted_podcast_clips(id integer) RETURNS SETOF public.clip
    LANGUAGE sql STABLE
    AS $$

SELECT C.*
    FROM clip C
    JOIN podcast_clip PC ON PC.clip_id = C.id
    WHERE 
    	PC.podcast_id = sorted_podcast_clips.id
    ORDER BY published_date DESC

 $$;


--
-- Name: station_all_station_podcasts(public.station); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.station_all_station_podcasts(st public.station) RETURNS SETOF public.podcast
    LANGUAGE sql STABLE
    AS $$
SELECT P.*
    FROM podcast P
    JOIN station_podcast SP ON SP.podcast_id = P.id
    JOIN station S ON SP.station_id = S.id
    WHERE
      S.id = st.id

    UNION

    SELECT P.*
    FROM podcast P
    JOIN show_podcast SP ON SP.podcast_id = P.id
    JOIN station_show SS ON SP.show_id = SS.show_id
    JOIN station S ON SS.station_id = S.id
    WHERE
      S.id = st.id

    ORDER BY popularity DESC
$$;


--
-- Name: station_by_ids(integer[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.station_by_ids(ids integer[]) RETURNS SETOF public.station
    LANGUAGE sql STABLE
    AS $_$

    SELECT S.*
    FROM station S
    WHERE S.id = ANY($1)
    ORDER BY array_position(ids, s.id);

$_$;


--
-- Name: update_date(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_date() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.created_date IS NULL THEN
        NEW.created_date := 'now';
    END IF;
    NEW.modified_date := 'now';
    return NEW;
END;
$$;


--
-- Name: admin_user_perms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_user_perms (
    user_id integer NOT NULL,
    page_name character varying(255) NOT NULL,
    perm_name character varying(6) NOT NULL
);


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users (
    user_id integer NOT NULL,
    user_name character varying(500),
    user_password character varying(128)
);


--
-- Name: category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    sort_order integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: clip_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clip_id_seq OWNED BY public.clip.id;


--
-- Name: featured_podcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.featured_podcast (
    id integer NOT NULL,
    podcast_id integer NOT NULL,
    market_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: featured_podcast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.featured_podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: featured_podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.featured_podcast_id_seq OWNED BY public.featured_podcast.id;


--
-- Name: featured_station; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.featured_station (
    id integer NOT NULL,
    station_id integer NOT NULL,
    market_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: featured_station_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.featured_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: featured_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.featured_station_id_seq OWNED BY public.featured_station.id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    sort_order integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;


--
-- Name: market; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.market (
    id integer NOT NULL,
    name text NOT NULL,
    display_name text,
    state text,
    state_full text,
    timezone text,
    latitude real,
    longitude real,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: market_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: market_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.market_id_seq OWNED BY public.market.id;


--
-- Name: page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.page_id_seq OWNED BY public.page.id;


--
-- Name: page_module_clips_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_clips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_clips; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_clips (
    id integer DEFAULT nextval('public.page_module_clips_id_seq'::regclass) NOT NULL,
    page_module_id integer NOT NULL,
    clip_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.page_module_id_seq OWNED BY public.page_module.id;


--
-- Name: page_module_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_pages (
    id integer DEFAULT nextval('public.page_module_pages_id_seq'::regclass) NOT NULL,
    page_module_id integer NOT NULL,
    page_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_playlist (
    id integer DEFAULT nextval('public.page_module_playlist_id_seq'::regclass) NOT NULL,
    page_module_id integer NOT NULL,
    playlist_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_podcasts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_podcasts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_podcasts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_podcasts (
    id integer DEFAULT nextval('public.page_module_podcasts_id_seq'::regclass) NOT NULL,
    page_module_id integer NOT NULL,
    podcast_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: page_module_stations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_module_stations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_module_stations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_module_stations (
    id integer DEFAULT nextval('public.page_module_stations_id_seq'::regclass) NOT NULL,
    page_module_id integer NOT NULL,
    station_id integer NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: playlist_clip_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.playlist_clip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: playlist_clip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.playlist_clip_id_seq OWNED BY public.playlist_clip.id;


--
-- Name: playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.playlist_id_seq OWNED BY public.playlist.id;


--
-- Name: podcast_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.podcast_category (
    id integer NOT NULL,
    podcast_id integer NOT NULL,
    category_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: podcast_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.podcast_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: podcast_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.podcast_category_id_seq OWNED BY public.podcast_category.id;


--
-- Name: podcast_clip; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.podcast_clip (
    id integer NOT NULL,
    podcast_id integer NOT NULL,
    clip_id integer NOT NULL,
    sort_order integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: podcast_clip_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.podcast_clip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: podcast_clip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.podcast_clip_id_seq OWNED BY public.podcast_clip.id;


--
-- Name: podcast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.podcast_id_seq OWNED BY public.podcast.id;


--
-- Name: show; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.show (
    id integer NOT NULL,
    name text,
    site_url text,
    hero_image text,
    image text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    program_id text,
    detail boolean DEFAULT false
);


--
-- Name: show_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.show_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: show_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.show_id_seq OWNED BY public.show.id;


--
-- Name: show_module_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.show_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: show_module; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.show_module (
    id integer DEFAULT nextval('public.show_module_id_seq'::regclass) NOT NULL,
    show_id integer NOT NULL,
    sort_order integer,
    module_type public.module_type NOT NULL,
    object_id integer,
    display_name text NOT NULL,
    view_more_url text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: show_module_custom_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.show_module_custom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: show_module_custom; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.show_module_custom (
    id integer DEFAULT nextval('public.show_module_custom_id_seq'::regclass) NOT NULL,
    show_module_id integer NOT NULL,
    sort_order integer,
    image text,
    label text,
    sub_label text,
    web_view boolean,
    url text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: show_playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.show_playlist (
    id integer NOT NULL,
    show_id integer NOT NULL,
    playlist_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: show_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.show_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: show_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.show_playlist_id_seq OWNED BY public.show_playlist.id;


--
-- Name: show_podcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.show_podcast (
    id integer NOT NULL,
    show_id integer NOT NULL,
    podcast_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: show_podcast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.show_podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: show_podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.show_podcast_id_seq OWNED BY public.show_podcast.id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.song (
    id integer NOT NULL,
    ufid text NOT NULL,
    title text NOT NULL,
    artist text NOT NULL,
    album text,
    image_url text,
    image_url_hi_res text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: song_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.song_id_seq OWNED BY public.song.id;


--
-- Name: song_play; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.song_play (
    id integer NOT NULL,
    song_id integer NOT NULL,
    station_id integer NOT NULL,
    played_date timestamp without time zone NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: song_play_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.song_play_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: song_play_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.song_play_id_seq OWNED BY public.song_play.id;


--
-- Name: station_genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_genre (
    id integer NOT NULL,
    station_id integer NOT NULL,
    genre_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_genre_id_seq OWNED BY public.station_genre.id;


--
-- Name: station_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_id_seq OWNED BY public.station.id;


--
-- Name: station_module_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_module; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_module (
    id integer DEFAULT nextval('public.station_module_id_seq'::regclass) NOT NULL,
    station_id integer NOT NULL,
    sort_order integer,
    module_type public.module_type NOT NULL,
    object_id integer,
    display_name text NOT NULL,
    view_more_url text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    object_text text,
    icon_url text
);


--
-- Name: station_module_custom_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_module_custom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_module_custom; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_module_custom (
    id integer DEFAULT nextval('public.station_module_custom_id_seq'::regclass) NOT NULL,
    station_module_id integer NOT NULL,
    sort_order integer,
    image text,
    label text,
    sub_label text,
    web_view boolean,
    url text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_mount; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_mount (
    id integer NOT NULL,
    station_id integer NOT NULL,
    type public.mount_type NOT NULL,
    mount text NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_mount_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_mount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_mount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_mount_id_seq OWNED BY public.station_mount.id;


--
-- Name: station_playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_playlist (
    id integer NOT NULL,
    station_id integer NOT NULL,
    playlist_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_playlist_id_seq OWNED BY public.station_playlist.id;


--
-- Name: station_podcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_podcast (
    id integer NOT NULL,
    station_id integer NOT NULL,
    podcast_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_podcast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_podcast_id_seq OWNED BY public.station_podcast.id;


--
-- Name: station_show; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_show (
    id integer NOT NULL,
    station_id integer NOT NULL,
    show_id integer NOT NULL,
    display_schedule text,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    sort_order integer DEFAULT 0
);


--
-- Name: station_show_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_show_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_show_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_show_id_seq OWNED BY public.station_show.id;


--
-- Name: station_show_schedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_show_schedule (
    id integer NOT NULL,
    station_show_id integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    day_of_week integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT station_show_schedule_day_of_week_check CHECK (((day_of_week >= 1) AND (day_of_week <= 7)))
);


--
-- Name: station_show_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_show_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_show_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_show_schedule_id_seq OWNED BY public.station_show_schedule.id;


--
-- Name: station_stream; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.station_stream (
    id integer NOT NULL,
    station_id integer NOT NULL,
    type public.stream_type NOT NULL,
    url text NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    modified_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: station_stream_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.station_stream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: station_stream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.station_stream_id_seq OWNED BY public.station_stream.id;


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: clip id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clip ALTER COLUMN id SET DEFAULT nextval('public.clip_id_seq'::regclass);


--
-- Name: featured_podcast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_podcast ALTER COLUMN id SET DEFAULT nextval('public.featured_podcast_id_seq'::regclass);


--
-- Name: featured_station id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_station ALTER COLUMN id SET DEFAULT nextval('public.featured_station_id_seq'::regclass);


--
-- Name: genre id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);


--
-- Name: market id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.market ALTER COLUMN id SET DEFAULT nextval('public.market_id_seq'::regclass);


--
-- Name: page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page ALTER COLUMN id SET DEFAULT nextval('public.page_id_seq'::regclass);


--
-- Name: page_module id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module ALTER COLUMN id SET DEFAULT nextval('public.page_module_id_seq'::regclass);


--
-- Name: playlist id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist ALTER COLUMN id SET DEFAULT nextval('public.playlist_id_seq'::regclass);


--
-- Name: playlist_clip id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist_clip ALTER COLUMN id SET DEFAULT nextval('public.playlist_clip_id_seq'::regclass);


--
-- Name: podcast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast ALTER COLUMN id SET DEFAULT nextval('public.podcast_id_seq'::regclass);


--
-- Name: podcast_category id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_category ALTER COLUMN id SET DEFAULT nextval('public.podcast_category_id_seq'::regclass);


--
-- Name: podcast_clip id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_clip ALTER COLUMN id SET DEFAULT nextval('public.podcast_clip_id_seq'::regclass);


--
-- Name: show id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show ALTER COLUMN id SET DEFAULT nextval('public.show_id_seq'::regclass);


--
-- Name: show_playlist id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_playlist ALTER COLUMN id SET DEFAULT nextval('public.show_playlist_id_seq'::regclass);


--
-- Name: show_podcast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_podcast ALTER COLUMN id SET DEFAULT nextval('public.show_podcast_id_seq'::regclass);


--
-- Name: song id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song ALTER COLUMN id SET DEFAULT nextval('public.song_id_seq'::regclass);


--
-- Name: song_play id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song_play ALTER COLUMN id SET DEFAULT nextval('public.song_play_id_seq'::regclass);


--
-- Name: station id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station ALTER COLUMN id SET DEFAULT nextval('public.station_id_seq'::regclass);


--
-- Name: station_genre id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_genre ALTER COLUMN id SET DEFAULT nextval('public.station_genre_id_seq'::regclass);


--
-- Name: station_mount id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_mount ALTER COLUMN id SET DEFAULT nextval('public.station_mount_id_seq'::regclass);


--
-- Name: station_playlist id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_playlist ALTER COLUMN id SET DEFAULT nextval('public.station_playlist_id_seq'::regclass);


--
-- Name: station_podcast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_podcast ALTER COLUMN id SET DEFAULT nextval('public.station_podcast_id_seq'::regclass);


--
-- Name: station_show id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show ALTER COLUMN id SET DEFAULT nextval('public.station_show_id_seq'::regclass);


--
-- Name: station_show_schedule id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show_schedule ALTER COLUMN id SET DEFAULT nextval('public.station_show_schedule_id_seq'::regclass);


--
-- Name: station_stream id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_stream ALTER COLUMN id SET DEFAULT nextval('public.station_stream_id_seq'::regclass);


--
-- Data for Name: admin_user_perms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_user_perms (user_id, page_name, perm_name) FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users (user_id, user_name, user_password) FROM stdin;
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.category (id, name, slug, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: clip; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clip (id, omny_clip_id, title, description, image_url, audio_url, video_url, embed_url, duration_seconds, publish_state, published_url, published_date, program_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: featured_podcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.featured_podcast (id, podcast_id, market_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: featured_station; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.featured_station (id, station_id, market_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genre (id, name, slug, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: market; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.market (id, name, display_name, state, state_full, timezone, latitude, longitude, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page (id, name, feature_image, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page_module; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module (id, type, name, created_date, modified_date, page_id, sort_order, destination_id, destination_type, icon_url) FROM stdin;
\.


--
-- Data for Name: page_module_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_category (id, title, image, sort_order, created_date, modified_date, page_module_id, destination_id, destination_type) FROM stdin;
\.


--
-- Data for Name: page_module_clips; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_clips (id, page_module_id, clip_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page_module_pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_pages (id, page_module_id, page_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page_module_playlist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_playlist (id, page_module_id, playlist_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page_module_podcasts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_podcasts (id, page_module_id, podcast_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: page_module_stations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_module_stations (id, page_module_id, station_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.playlist (id, omny_playlist_id, title, description, hero_image, created_date, modified_date, image) FROM stdin;
\.


--
-- Data for Name: playlist_clip; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.playlist_clip (id, playlist_id, clip_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: podcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.podcast (id, title, hero_image, image, rss_feed, created_date, modified_date, popularity, itunes_url, description, omny_playlist_id) FROM stdin;
\.


--
-- Data for Name: podcast_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.podcast_category (id, podcast_id, category_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: podcast_clip; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.podcast_clip (id, podcast_id, clip_id, sort_order, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: show; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.show (id, name, site_url, hero_image, image, created_date, modified_date, program_id, detail) FROM stdin;
\.


--
-- Data for Name: show_module; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.show_module (id, show_id, sort_order, module_type, object_id, display_name, view_more_url, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: show_module_custom; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.show_module_custom (id, show_module_id, sort_order, image, label, sub_label, web_view, url, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: show_playlist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.show_playlist (id, show_id, playlist_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: show_podcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.show_podcast (id, show_id, podcast_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.song (id, ufid, title, artist, album, image_url, image_url_hi_res, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: song_play; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.song_play (id, song_id, station_id, played_date, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station (id, r20id, name, slogan, description, format, website, callsign, slug, category, bband, frequency, listen_live_url, stream_type, gaid, partner, status, hero_image, square_logo_small, square_logo_large, logo_svg, triton_id, triton_name, city, state, country, postal_code, gmt_offset, observes_dst, latitude, longitude, market_id, ando_id, doubleclick_prerolltag, doubleclick_bannertag, targetspot_id, facebook, twitter, tune_in_url, created_date, modified_date, popularity, primary_color, secondary_color, tag_station_id, nielsen_asset_id, nielsen_station_type, keywords, phone_number, newsletter_signup) FROM stdin;
\.


--
-- Data for Name: station_genre; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_genre (id, station_id, genre_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_module; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_module (id, station_id, sort_order, module_type, object_id, display_name, view_more_url, created_date, modified_date, object_text, icon_url) FROM stdin;
\.


--
-- Data for Name: station_module_custom; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_module_custom (id, station_module_id, sort_order, image, label, sub_label, web_view, url, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_mount; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_mount (id, station_id, type, mount, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_playlist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_playlist (id, station_id, playlist_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_podcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_podcast (id, station_id, podcast_id, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_show; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_show (id, station_id, show_id, display_schedule, created_date, modified_date, sort_order) FROM stdin;
\.


--
-- Data for Name: station_show_schedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_show_schedule (id, station_show_id, start_time, end_time, day_of_week, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: station_stream; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.station_stream (id, station_id, type, url, created_date, modified_date) FROM stdin;
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- Name: clip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clip_id_seq', 1, false);


--
-- Name: featured_podcast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.featured_podcast_id_seq', 1, false);


--
-- Name: featured_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.featured_station_id_seq', 1, false);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genre_id_seq', 1, false);


--
-- Name: market_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.market_id_seq', 1, false);


--
-- Name: page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_id_seq', 1, false);


--
-- Name: page_module_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_category_id_seq', 1, false);


--
-- Name: page_module_clips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_clips_id_seq', 1, false);


--
-- Name: page_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_id_seq', 1, false);


--
-- Name: page_module_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_pages_id_seq', 1, false);


--
-- Name: page_module_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_playlist_id_seq', 1, false);


--
-- Name: page_module_podcasts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_podcasts_id_seq', 1, false);


--
-- Name: page_module_stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_module_stations_id_seq', 1, false);


--
-- Name: playlist_clip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.playlist_clip_id_seq', 1, false);


--
-- Name: playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.playlist_id_seq', 1, false);


--
-- Name: podcast_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.podcast_category_id_seq', 1, false);


--
-- Name: podcast_clip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.podcast_clip_id_seq', 1, false);


--
-- Name: podcast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.podcast_id_seq', 1, false);


--
-- Name: show_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.show_id_seq', 1, false);


--
-- Name: show_module_custom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.show_module_custom_id_seq', 1, false);


--
-- Name: show_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.show_module_id_seq', 1, false);


--
-- Name: show_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.show_playlist_id_seq', 1, false);


--
-- Name: show_podcast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.show_podcast_id_seq', 1, false);


--
-- Name: song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.song_id_seq', 1, false);


--
-- Name: song_play_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.song_play_id_seq', 1, false);


--
-- Name: station_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_genre_id_seq', 1, false);


--
-- Name: station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_id_seq', 1, false);


--
-- Name: station_module_custom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_module_custom_id_seq', 1, false);


--
-- Name: station_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_module_id_seq', 1, false);


--
-- Name: station_mount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_mount_id_seq', 1, false);


--
-- Name: station_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_playlist_id_seq', 1, false);


--
-- Name: station_podcast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_podcast_id_seq', 1, false);


--
-- Name: station_show_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_show_id_seq', 1, false);


--
-- Name: station_show_schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_show_schedule_id_seq', 1, false);


--
-- Name: station_stream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.station_stream_id_seq', 1, false);


--
-- Name: admin_user_perms admin_user_perms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_user_perms
    ADD CONSTRAINT admin_user_perms_pkey PRIMARY KEY (user_id, page_name, perm_name);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (user_id);


--
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: category category_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_slug_key UNIQUE (slug);


--
-- Name: clip clip_omny_clip_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clip
    ADD CONSTRAINT clip_omny_clip_id_key UNIQUE (omny_clip_id);


--
-- Name: clip clip_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clip
    ADD CONSTRAINT clip_pkey PRIMARY KEY (id);


--
-- Name: featured_podcast featured_podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_podcast
    ADD CONSTRAINT featured_podcast_pkey PRIMARY KEY (id);


--
-- Name: featured_podcast featured_podcast_podcast_id_market_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_podcast
    ADD CONSTRAINT featured_podcast_podcast_id_market_id_key UNIQUE (podcast_id, market_id);


--
-- Name: featured_station featured_station_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_station
    ADD CONSTRAINT featured_station_pkey PRIMARY KEY (id);


--
-- Name: featured_station featured_station_station_id_market_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_station
    ADD CONSTRAINT featured_station_station_id_market_id_key UNIQUE (station_id, market_id);


--
-- Name: genre genre_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_name_key UNIQUE (name);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- Name: genre genre_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_slug_key UNIQUE (slug);


--
-- Name: market market_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_name_key UNIQUE (name);


--
-- Name: market market_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_pkey PRIMARY KEY (id);


--
-- Name: page_module_category page_module_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_category
    ADD CONSTRAINT page_module_category_pkey PRIMARY KEY (id);


--
-- Name: page_module_clips page_module_clips_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_clips
    ADD CONSTRAINT page_module_clips_pkey PRIMARY KEY (id);


--
-- Name: page_module_pages page_module_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_pages
    ADD CONSTRAINT page_module_pages_pkey PRIMARY KEY (id);


--
-- Name: page_module page_module_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module
    ADD CONSTRAINT page_module_pkey PRIMARY KEY (id);


--
-- Name: page_module_playlist page_module_playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_playlist
    ADD CONSTRAINT page_module_playlist_pkey PRIMARY KEY (id);


--
-- Name: page_module_podcasts page_module_podcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_podcasts
    ADD CONSTRAINT page_module_podcasts_pkey PRIMARY KEY (id);


--
-- Name: page_module_stations page_module_stations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_stations
    ADD CONSTRAINT page_module_stations_pkey PRIMARY KEY (id);


--
-- Name: page page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);


--
-- Name: playlist_clip playlist_clip_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist_clip
    ADD CONSTRAINT playlist_clip_pkey PRIMARY KEY (id);


--
-- Name: playlist_clip playlist_clip_playlist_id_clip_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist_clip
    ADD CONSTRAINT playlist_clip_playlist_id_clip_id_key UNIQUE (playlist_id, clip_id);


--
-- Name: playlist playlist_omny_playlist_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_omny_playlist_id_key UNIQUE (omny_playlist_id);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (id);


--
-- Name: podcast_category podcast_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_category
    ADD CONSTRAINT podcast_category_pkey PRIMARY KEY (id);


--
-- Name: podcast_category podcast_category_podcast_id_category_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_category
    ADD CONSTRAINT podcast_category_podcast_id_category_id_key UNIQUE (podcast_id, category_id);


--
-- Name: podcast_clip podcast_clip_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_clip
    ADD CONSTRAINT podcast_clip_pkey PRIMARY KEY (id);


--
-- Name: podcast_clip podcast_clip_podcast_id_clip_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_clip
    ADD CONSTRAINT podcast_clip_podcast_id_clip_id_key UNIQUE (podcast_id, clip_id);


--
-- Name: podcast podcast_omny_playlist_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast
    ADD CONSTRAINT podcast_omny_playlist_id_key UNIQUE (omny_playlist_id);


--
-- Name: podcast podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast
    ADD CONSTRAINT podcast_pkey PRIMARY KEY (id);


--
-- Name: show_module_custom show_module_custom_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_module_custom
    ADD CONSTRAINT show_module_custom_pkey PRIMARY KEY (id);


--
-- Name: show_module show_module_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_module
    ADD CONSTRAINT show_module_pkey PRIMARY KEY (id);


--
-- Name: show show_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_pkey PRIMARY KEY (id);


--
-- Name: show_playlist show_playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_playlist
    ADD CONSTRAINT show_playlist_pkey PRIMARY KEY (id);


--
-- Name: show_playlist show_playlist_show_id_playlist_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_playlist
    ADD CONSTRAINT show_playlist_show_id_playlist_id_key UNIQUE (show_id, playlist_id);


--
-- Name: show_podcast show_podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_podcast
    ADD CONSTRAINT show_podcast_pkey PRIMARY KEY (id);


--
-- Name: show_podcast show_podcast_show_id_podcast_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_podcast
    ADD CONSTRAINT show_podcast_show_id_podcast_id_key UNIQUE (show_id, podcast_id);


--
-- Name: show show_program_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_program_id_key UNIQUE (program_id);


--
-- Name: song song_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (id);


--
-- Name: song_play song_play_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song_play
    ADD CONSTRAINT song_play_pkey PRIMARY KEY (id);


--
-- Name: song song_ufid_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_ufid_key UNIQUE (ufid);


--
-- Name: station_genre station_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_genre
    ADD CONSTRAINT station_genre_pkey PRIMARY KEY (id);


--
-- Name: station_genre station_genre_station_id_genre_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_genre
    ADD CONSTRAINT station_genre_station_id_genre_id_key UNIQUE (station_id, genre_id);


--
-- Name: station_module_custom station_module_custom_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_module_custom
    ADD CONSTRAINT station_module_custom_pkey PRIMARY KEY (id);


--
-- Name: station_module station_module_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_module
    ADD CONSTRAINT station_module_pkey PRIMARY KEY (id);


--
-- Name: station_mount station_mount_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_mount
    ADD CONSTRAINT station_mount_pkey PRIMARY KEY (id);


--
-- Name: station station_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);


--
-- Name: station_playlist station_playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_playlist
    ADD CONSTRAINT station_playlist_pkey PRIMARY KEY (id);


--
-- Name: station_playlist station_playlist_station_id_playlist_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_playlist
    ADD CONSTRAINT station_playlist_station_id_playlist_id_key UNIQUE (station_id, playlist_id);


--
-- Name: station_podcast station_podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_podcast
    ADD CONSTRAINT station_podcast_pkey PRIMARY KEY (id);


--
-- Name: station_podcast station_podcast_station_id_podcast_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_podcast
    ADD CONSTRAINT station_podcast_station_id_podcast_id_key UNIQUE (station_id, podcast_id);


--
-- Name: station station_r20id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_r20id_key UNIQUE (r20id);


--
-- Name: station_show station_show_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show
    ADD CONSTRAINT station_show_pkey PRIMARY KEY (id);


--
-- Name: station_show_schedule station_show_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show_schedule
    ADD CONSTRAINT station_show_schedule_pkey PRIMARY KEY (id);


--
-- Name: station_stream station_stream_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_stream
    ADD CONSTRAINT station_stream_pkey PRIMARY KEY (id);


--
-- Name: station_market_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX station_market_id_idx ON public.station USING btree (market_id);


--
-- Name: genre update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.genre FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: market update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.market FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: podcast update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.podcast FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: show update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.show FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_genre update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_genre FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_mount update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_mount FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_show update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_show FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_show_schedule update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_show_schedule FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_stream update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_stream FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: song update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.song FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: song_play update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.song_play FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: clip update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.clip FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: playlist update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.playlist FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: show_playlist update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.show_playlist FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_playlist update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_playlist FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_podcast update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_podcast FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: show_podcast update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.show_podcast FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: playlist_clip update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.playlist_clip FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_module update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_module FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: station_module_custom update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.station_module_custom FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: podcast_clip update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.podcast_clip FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: show_module update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.show_module FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: show_module_custom update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.show_module_custom FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: featured_podcast update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.featured_podcast FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: featured_station update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.featured_station FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: category update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.category FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: podcast_category update_date; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_date BEFORE INSERT OR UPDATE ON public.podcast_category FOR EACH ROW EXECUTE PROCEDURE public.update_date();


--
-- Name: page_module_clips clip_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_clips
    ADD CONSTRAINT clip_id FOREIGN KEY (clip_id) REFERENCES public.clip(id);


--
-- Name: featured_podcast featured_podcast_market_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_podcast
    ADD CONSTRAINT featured_podcast_market_id_fkey FOREIGN KEY (market_id) REFERENCES public.market(id) ON DELETE CASCADE;


--
-- Name: featured_podcast featured_podcast_podcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_podcast
    ADD CONSTRAINT featured_podcast_podcast_id_fkey FOREIGN KEY (podcast_id) REFERENCES public.podcast(id) ON DELETE CASCADE;


--
-- Name: featured_station featured_station_market_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_station
    ADD CONSTRAINT featured_station_market_id_fkey FOREIGN KEY (market_id) REFERENCES public.market(id) ON DELETE CASCADE;


--
-- Name: featured_station featured_station_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.featured_station
    ADD CONSTRAINT featured_station_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: page_module page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module
    ADD CONSTRAINT page_id FOREIGN KEY (page_id) REFERENCES public.page(id) ON DELETE CASCADE;


--
-- Name: page_module_pages page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_pages
    ADD CONSTRAINT page_id FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_module_stations page_module_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_stations
    ADD CONSTRAINT page_module_id FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_category page_module_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_category
    ADD CONSTRAINT page_module_id FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_podcasts page_module_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_podcasts
    ADD CONSTRAINT page_module_id FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_clips page_module_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_clips
    ADD CONSTRAINT page_module_id FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_pages page_module_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_pages
    ADD CONSTRAINT page_module_id FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_playlist page_module_playlist_page_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_playlist
    ADD CONSTRAINT page_module_playlist_page_module_id_fkey FOREIGN KEY (page_module_id) REFERENCES public.page_module(id) ON DELETE CASCADE;


--
-- Name: page_module_playlist page_module_playlist_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_playlist
    ADD CONSTRAINT page_module_playlist_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(id);


--
-- Name: playlist_clip playlist_clip_clip_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist_clip
    ADD CONSTRAINT playlist_clip_clip_id_fkey FOREIGN KEY (clip_id) REFERENCES public.clip(id) ON DELETE CASCADE;


--
-- Name: playlist_clip playlist_clip_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist_clip
    ADD CONSTRAINT playlist_clip_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(id) ON DELETE CASCADE;


--
-- Name: podcast_category podcast_category_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_category
    ADD CONSTRAINT podcast_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id) ON DELETE CASCADE;


--
-- Name: podcast_category podcast_category_podcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_category
    ADD CONSTRAINT podcast_category_podcast_id_fkey FOREIGN KEY (podcast_id) REFERENCES public.podcast(id) ON DELETE CASCADE;


--
-- Name: podcast_clip podcast_clip_clip_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_clip
    ADD CONSTRAINT podcast_clip_clip_id_fkey FOREIGN KEY (clip_id) REFERENCES public.clip(id) ON DELETE CASCADE;


--
-- Name: podcast_clip podcast_clip_podcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podcast_clip
    ADD CONSTRAINT podcast_clip_podcast_id_fkey FOREIGN KEY (podcast_id) REFERENCES public.podcast(id) ON DELETE CASCADE;


--
-- Name: page_module_podcasts podcast_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_podcasts
    ADD CONSTRAINT podcast_id FOREIGN KEY (podcast_id) REFERENCES public.podcast(id);


--
-- Name: show_module_custom show_module_custom_show_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_module_custom
    ADD CONSTRAINT show_module_custom_show_module_id_fkey FOREIGN KEY (show_module_id) REFERENCES public.show_module(id) ON DELETE CASCADE;


--
-- Name: show_module show_module_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_module
    ADD CONSTRAINT show_module_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(id) ON DELETE CASCADE;


--
-- Name: show_playlist show_playlist_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_playlist
    ADD CONSTRAINT show_playlist_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(id) ON DELETE CASCADE;


--
-- Name: show_playlist show_playlist_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_playlist
    ADD CONSTRAINT show_playlist_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(id) ON DELETE CASCADE;


--
-- Name: show_podcast show_podcast_podcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_podcast
    ADD CONSTRAINT show_podcast_podcast_id_fkey FOREIGN KEY (podcast_id) REFERENCES public.podcast(id) ON DELETE CASCADE;


--
-- Name: show_podcast show_podcast_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.show_podcast
    ADD CONSTRAINT show_podcast_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(id) ON DELETE CASCADE;


--
-- Name: song_play song_play_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song_play
    ADD CONSTRAINT song_play_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.song(id) ON DELETE CASCADE;


--
-- Name: song_play song_play_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.song_play
    ADD CONSTRAINT song_play_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_genre station_genre_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_genre
    ADD CONSTRAINT station_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);


--
-- Name: station_genre station_genre_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_genre
    ADD CONSTRAINT station_genre_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: page_module_stations station_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_module_stations
    ADD CONSTRAINT station_id FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: station station_market_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_market_id_fkey FOREIGN KEY (market_id) REFERENCES public.market(id);


--
-- Name: station_module_custom station_module_custom_station_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_module_custom
    ADD CONSTRAINT station_module_custom_station_module_id_fkey FOREIGN KEY (station_module_id) REFERENCES public.station_module(id) ON DELETE CASCADE;


--
-- Name: station_module station_module_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_module
    ADD CONSTRAINT station_module_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_mount station_mount_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_mount
    ADD CONSTRAINT station_mount_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_playlist station_playlist_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_playlist
    ADD CONSTRAINT station_playlist_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(id) ON DELETE CASCADE;


--
-- Name: station_playlist station_playlist_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_playlist
    ADD CONSTRAINT station_playlist_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_podcast station_podcast_podcast_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_podcast
    ADD CONSTRAINT station_podcast_podcast_id_fkey FOREIGN KEY (podcast_id) REFERENCES public.podcast(id) ON DELETE CASCADE;


--
-- Name: station_podcast station_podcast_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_podcast
    ADD CONSTRAINT station_podcast_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_show_schedule station_show_schedule_station_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show_schedule
    ADD CONSTRAINT station_show_schedule_station_show_id_fkey FOREIGN KEY (station_show_id) REFERENCES public.station_show(id) ON DELETE CASCADE;


--
-- Name: station_show station_show_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show
    ADD CONSTRAINT station_show_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(id) ON DELETE CASCADE;


--
-- Name: station_show station_show_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_show
    ADD CONSTRAINT station_show_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- Name: station_stream station_stream_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.station_stream
    ADD CONSTRAINT station_stream_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

